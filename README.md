# CMMID Repository

Source for [cmmid.github.io](https://cmmid.github.io/) — an open-access repository for project work from [CMMID](https://cmmid.lshtm.ac.uk/).

## Site structure

Each topic lives under `topics/<topic-name>/` with its own `_posts/` directory and optional sub-pages for filtering by tag. Current topics:

- **Ebola BVD** — `topics/ebola-bvd/` — 2026 Bundibugyo ebolavirus outbreak
- **Covid-19** — `topics/covid19/` — SARS-CoV-2 work

## Adding a post

1. Add a markdown or HTML file to the relevant topic's `_posts/` directory, e.g. `topics/ebola-bvd/_posts/` or `topics/covid19/_posts/`
2. Name it `YYYY-MM-DD-short-title.md`
3. Use [topics/YYYY-MM-DD-post-template.md](topics/YYYY-MM-DD-post-template.md) as a starting point

Key frontmatter fields:

```yaml
title: Title of the post
description: Short description
status: paper-under-peer-review  # see template for all options
update: YYYY-MM-DD
tags: [transmission-dynamics, severity]  # controls which sub-page the post appears on
authors:
  - id: author_id  # see _data/authors.yml for ids
```

Figures go in `topics/<topic>/figures/`, reports in `topics/<topic>/reports/`.

## Adding a tag (sub-page)

Tags control which section a post appears under within a topic.

1. Add a page in the topic directory with `tag_filter: your-tag` in the frontmatter (see existing pages for examples)
2. Add a translation entry to `_data/translations.yml` with the tag id and an `en-gb` label

## Adding a new topic

1. Create `topics/<topic-name>/` with an `index.md` (frontmatter: `title`)
2. Create `topics/<topic-name>/_posts/` for posts
3. Add the topic to `_data/navigation.yml` and the homepage `index.md`
4. Add a working group page in `groups/` if needed

## R Shiny apps

Copy `_shinyapp/template.md` to a new file in the same directory and update the `shinyurl` and `title` fields.
