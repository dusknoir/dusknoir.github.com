module Middleman::Features::Wowlinks
  class Middleware
    def initialize(app, options = {})
      @app = app
      @options = options
    end

    def call(env)
      status, headers, body = @app.call(env)

      return [status, headers, body] unless headers['Content-Type'] =~ /(html|xml)/

      output_format = $1 # html or xml; save because it won't be accessible in gsub
      body_joined = String.new

      body.each do |part|
        body_joined << part
      end

      body_joined.gsub!(/\[(item|spell):(\d+)\]/) do
        type, id = $1, $2.to_i

        @links ||= Hash.new
        @links[type] ||= Hash.new
        @links[type][id] ||= if type == 'item'
          Wowlinks::Item.new(id)
        elsif type == 'spell'
          Wowlinks::Spell.new(id)
        else
          Wowlinks::Thing.new(id) # pseudoerror that should never happen :>
        end

        format @links[type][id], output_format
      end

      # must be a string!
      headers['Content-Length'] = body_joined.length.to_s if headers['Content-Length']

      [status, headers, [body_joined]]
    ensure
      body.close if body.respond_to?(:close)
    end

    private

    def format(obj, output)
      if output == 'html'
        obj.to_html
      else
        CGI.escapeHTML("<a href='http://wowhead.com/#{obj.type}=#{obj.id}'>#{obj.name}</a>")
      end
    end
  end

  class << self
    def registered(app)
      require 'wowlinks'
      app.use Middleware
    end

    alias_method :included, :registered
  end
end

Middleman::Extensions.register(:wowlinks, Middleman::Features::Wowlinks)
