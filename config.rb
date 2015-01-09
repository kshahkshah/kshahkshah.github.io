###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###
helpers do 
  def generate_description(summary)
    summary = Nokogiri::HTML.parse(summary)
    summary.xpath("//text()").to_s.gsub("\n", '. ')
  end

  def get_image_lead(body)
    parsed_body = Nokogiri::HTML.parse(body)
    lead_image  = parsed_body.css('img').first
    lead_image ? lead_image['src'] : image_path('greatwave.jpg')
  end
end

# Directory Indexes, e.g. cv.html -> /cv
activate :directory_indexes

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.prefix = "blog"

  # blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  blog.sources = "/{year}-{month}-{day}-{title}.html"
  blog.taglink = "tags/{tag}.html"
  blog.layout = "blog-post"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  blog.default_extension = ".markdown"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
  

  # Enable pagination
  blog.paginate = true
  blog.per_page = 10
  # blog.page_link = "page/{num}"
end
page "/feed.xml", layout: false

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

activate :asset_hash

activate :syntax

activate :meta_tags

activate :gzip

activate :automatic_clowncar,
  :sizes => {
    :small => 320,
    :medium => 480,
    :large => 640,
    :huge => 940
  },
  :namespace_directory => %w(photos),
  :filetypes => [:jpg, :jpeg, :png]

activate :asset_host
set :asset_host, 'http://localhost:4567'

# Build-specific configuration
configure :build do
  set :asset_host, 'http://kunalashah.com'

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
