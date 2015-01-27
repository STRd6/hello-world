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
      name: "World"

## Writing to the HTML Document

The simplest way to add to the document is to append a child to the body node.

    document.body.appendChild element
