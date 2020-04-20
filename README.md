# OVERVIEW

The source for the [web page](https://cmmid.github.io/) advertising assorted [CMMID](https://cmmid.lshtm.ac.uk/) project work.

# Adding NEW posts

To add a new post to the website, add a new markdown or html file to the correct category under /topic/category/subcategory

Copy the [/topics/YYYY-MM-DD-post-template.md](https://github.com/cmmid/cmmid.github.io/blob/master/topics/YYYY-MM-DD-post-template.md) as a template to work on

Front-matter variables are optional, but the following are available:

```
title: Title of the post
description: Short description of post
status: in-progress, under-review, or published
update: YYYY-MM-DD when post was updated
```

Posts without the status 'accepted' or 'published' will automatically show the "Ths study is not peer-reviewed" message.
To suppress this message, set suppress_peerreviewed: true

```
tags: [severity, current-patterns-transmission, control-measures, early-outbreak-dynamics]
```

Posts can appear in multiple sections; delete the tags as appropriate

```
authors:
  - id: author_1
  - id: author_2
  - id: author_3
```
  
If you want to use mathjax, tabs, or other objects regularly used in Rmarkdown html files:
 1. set 'output: html_fragment' in your rmarkdown file
 2. set rmarkdown_html_fragment: true in the front-matter of your post
 

# Adding TRANSLATED posts

Post translations can be added alongside their English versions, but with the language variable set in the front-matter:

```
language: zh-cn
```

These posts can share the same images as the English versions.

Currently, only zh-cn is available. If unspecified, the language of the post will be set to `en-gb` automatically.
 

# Adding R Shiny Apps

To add a new shiny app to the [visualisations page](https://cmmid.github.io/visualisations.html), all you need to do is copy a file, and change two fields.

Detailed instructions:
 1. copy the [_shinyapp/template.md](https://github.com/cmmid/cmmid.github.io/blob/master/_shinyapp/template.md) file to a new file name in the same directory
 2. if using the Github interface, click raw to see the text to copy, then create a new file and paste that in; there is no simple way to duplicate a file in the web interface
 3. edit the `URL` in the `shinyurl: https://cmmid-lshtm.shinyapps.io/SOME_APP/` line to match the url where the application is hosted; this can be *any* url that serves up an R Shiny App
 4. edit the title; this must be valid YAML, so no new lines and watch out for `:` and `,` in your title - those and other special characters can be addressed by quoting the whole entry
 5. **DON'T** edit the `---`s.
 6. if using the Github web editing interface, you can check the preview to ensure proper entry. Should see a table-like thing
 7. commit your changes
