# This package is declared in `pixie.cson`
# We require it using the name defined there
Observable = require "observable"

# Here we export the constructor for our model
module.exports = (I) ->
  self =
    query: Observable ""
    urls: Observable []
    submit: (e) ->
      e.preventDefault()

      flickrAPI = "http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?"

      $.getJSON flickrAPI,
        tags: self.query()
        tagmode: "any"
        format: "json"
      .then (data) ->
        self.urls data.items.map (item) ->
          item.media.m
