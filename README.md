# OVERVIEW

The source for the [web page](https://cmmid.github.io/) advertising assorted [CMMID](https://cmmid.lshtm.ac.uk/) project work.

# Adding NEW posts

To add a new post to the website, add a new markdown or html file to the correct category under `/topic/category/_posts`, e.g. `/topic/covid19/_posts`

Copy the [/topics/YYYY-MM-DD-post-template.md](https://github.com/cmmid/cmmid.github.io/blob/master/topics/YYYY-MM-DD-post-template.md) as a template to work on.

Front-matter variables are optional, but the following are available:

```
title: Title of the post
description: Short description of post
status: paper-under-peer-review, paper-accepted-at-journal, paper-published-at-journal, etc (see template for full list)
update: YYYY-MM-DD when post was updated
```

Posts without the status 'paper-accepted-at-journal' or 'paper-published-at-journal' will automatically show the "Ths study is not peer-reviewed" message.
To suppress this message, set suppress_peerreviewed: true

```
tags: [transmission-dynamics, severity, lmic-considerations, control-measures, mixing-patterns, healthcare-settings, comments-opinions, forecasts-and-projections]

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
 

# Figures and attachments

Copy your figures and attachments into the `/topics/covid19/figures` and `/topics/covid19/reports` directories accordingly. Make sure they have a unique name (chances are someone else has already generated a `figure1.png` file), or create under `/topics/covid19/figures` specifically for your figures. The template contains some example markup demonstrating this.


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


# Adding new tags

To add a new tag, two things are required:

1. a topic page with the `tag_filter` matching that tag (see existing ones for an example)
2. an entry in `_data/translations.yml` (only the id, matching the tag, and an `en-gb` version are required).

Both of these must be in place before the new tag will be visible on the site.
