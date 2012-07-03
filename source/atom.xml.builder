xml.instruct!
xml.feed xmlns: 'http://www.w3.org/2005/Atom' do
  xml.title   data.config.site_name
  xml.id      "http://#{data.config.site_domain}"
  xml.link    href: "http://#{data.config.site_domain}"
  xml.link    href: "http://#{data.config.site_domain}/atom.xml", rel: 'self'
  xml.updated blog.articles.first.date.to_time.iso8601
  xml.author  { xml.name data.config.site_author }

  blog.articles[0..4].each do |article|
    xml.entry do
      xml.title     article.title
      xml.id        article.url
      xml.link      rel: 'alternate', href: article.url
      xml.published article.date.to_time.iso8601
      xml.content   article.body, type: 'html'
      xml.author    { xml.name data.config.site_author }
    end
  end
end
