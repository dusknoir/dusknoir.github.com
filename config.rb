$LOAD_PATH << File.dirname(__FILE__)

require 'middleman-wowlinks'

require 'lib/core_ext/array'
require 'lib/core_ext/fixnum'

require 'lib/helpers/gravatar'
require 'lib/helpers/tags'
# require 'lib/helpers/wowlinks'

helpers GravatarHelper
helpers TagsHelper

activate :directory_indexes
activate :wowlinks

activate :blog do |blog|
  blog.default_extension = '.md'
  blog.permalink = ':year/:month/:day/:title.html'
  blog.sources = ':year/:month/:day/:title.html'
  blog.tag_template = 'tag.html'
  blog.taglink = 'tags/:tag.html'
end

compass_config do |config|
  config.output_style = :compact
  config.sass_options = { trace_selectors: true }
end

configure :build do
  activate :asset_hash, exts: %w(css js)
  activate :minify_html
  activate :minify_css
  activate :minify_javascript
end

set :markdown_engine, :kramdown
set :markdown,  fenced_code_blocks: true, autolink: true

set :haml, format: :html5

page '/atom.xml', layout: false
