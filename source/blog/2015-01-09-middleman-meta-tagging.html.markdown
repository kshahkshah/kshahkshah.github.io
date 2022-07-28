---
title: Middleman Meta Tagging & Social Media
date: 2015-01-09 05:31 UTC
tags: code, meta
---

If you're using [Middleman](http://middlemanapp.com) to generate static webpages for clients or your blog, you may have come across the highly useful [middleman-meta-tags](https://github.com/tiste/middleman-meta-tags) gem.

One feature I missed from tumblr was the automatic open graph tags, which provides an ample replacement. I use it like this this:

```ruby
image_lead_path     = get_image_lead(current_article.body)
article_description = generate_description(current_article.summary)

set_meta_tags({
  "description"       => article_description,
  "og:description"    => article_description,
  "keywords"          => current_article.tags.join(', '),
  "twitter:creator"   => '@kashahkashah',
  "twitter:image:src" => image_lead_path,
  "og:image"          => image_lead_path
})
```

Forgive the old school hash syntax, I prefer it when dealing with weird key names.

More importantly you have may noticed the two method calls to ```get_image_lead``` and ```generate_description```

I'm using these naive, but useful, methods here. ```generate_description``` simply uses Nokogiri to collect text nodes and staples them together. ```get_image_lead``` grabs the first and uses that as the 'lead image' for site, which is what will in turn get posted to a facebook wall. It falls back onto my main site image if the article has no image.

```ruby
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
```

I'm looking to make this a bit more robust and handle other media particular videos. But for now, it works!

