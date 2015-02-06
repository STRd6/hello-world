# Hello World

Welcome to HyperWeb. Where you can create clientside applications easier and
better than ever before.

    # main.coffee.md

## Require

You can require other files just like you do in Node or other server-side
environments.

Here we are requiring a Hamlet template file.

    Template = require "./template"

## Templates

A template is a function that returns a DOM node when invoked. Here we are
passing data for the template to fill in.

    element = Template
      name: "World9000"

## Writing to the HTML Document

The simplest way to add to the document is to append a child to the body node.

    document.body.appendChild element

## Styling the HTML Document

To apply a stylesheet to your document you can create a `style` node.

Here we use a .styl file, which compiles into css text that we then attach to
the document head.

You can modify the style yourself in `style.styl`

    style = document.createElement "style"
    style.innerText = require "./style"

    document.head.appendChild style

## Flickr Search

Here we require a model and a template then combine them to create an element
to add to the DOM that let's us search Flikr using their JSON API.

    Flickr = require "./flickr"
    FlickrTemplate = require "./templates/flickr"
    document.body.appendChild FlickrTemplate Flickr()
