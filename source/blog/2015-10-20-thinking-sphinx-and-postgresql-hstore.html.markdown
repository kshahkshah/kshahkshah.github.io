---
title: Thinking Sphinx and postgresql HSTORE
date: 2015-10-20 18:31 UTC
tags: code
---

I've been working on putting up [everysingle.bike](http://everysingle.bike) where I've been exploring using some of postgres' newer features. [HSTORE](http://www.postgresql.org/docs/9.4/static/hstore.html) lets you directly store an indexable hash map in a row, which for my use case eliminates any desire to use a document store such as Mongo.

However as things have gotten more complicated I've tacked on a search engine, the one of choice for Ruby/Rails acts Sphinx connected by Pat Allan's [ThinkingSphinx](http://freelancing-gods.com/thinking-sphinx/indexing.html) gem. Since you are directly interfacing with the database through your index definition using my HSTORE keys was no problem at all:

```ruby
ThinkingSphinx::Index.define :bike_model, :with => :active_record do
  # regular old fields
  indexes manufacturer
  indexes model
  indexes size

  # hstore!
  BikeModel.all_component_keys.each do |key|
    indexes ("components -> '#{key}'"), :as => key.to_sym
  end

  # some attributes
  has year, price
end
```

and in my ```ActiveRecord``` backed ```BikeModel``` a static method which grabs all the unique keys directly from the database.

```ruby
def self.all_component_keys
  BikeModel.connection.execute("
    select distinct k
    from (
        select skeys(components) as k
        from bike_models
    ) as dt
  ").values.flatten
end
```
