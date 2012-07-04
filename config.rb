$LOAD_PATH << File.dirname(__FILE__)

require 'lib/core_ext/array'
require 'lib/core_ext/fixnum'

require 'lib/helpers/gravatar'
require 'lib/helpers/tags'
# require 'lib/helpers/wowlinks'

helpers GravatarHelper
helpers TagsHelper

activate :directory_indexes

activate :blog do |blog|
  blog.default_extension = '.md'
  blog.permalink = ':year/:month/:title.html'
  blog.sources = ':year/:month/:day/:title.html'
  blog.tag_template = 'tag.html'
  blog.taglink = 'tags/:tag.html'
end

page '/atom.xml', layout: false

compass_config do |config|
  config.output_style = :compact
  config.sass_options = { trace_selectors: true }
end

configure :build do
  activate :cache_buster
  activate :minify_html
  activate :minify_css
  activate :minify_javascript
  activate :smusher
end

set :haml, format: :html5
