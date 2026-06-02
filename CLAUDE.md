# CMMID site — dev guide

Jekyll site, deploys to https://cmmid.github.io via GitHub Pages on push to `master`.

Use the README for detailed instructions to add new posts. 

## Local dev

```bash
make setup   # first time: bundle install
make run     # bundle exec jekyll serve -w → http://localhost:4000
```

Requires Ruby + Bundler.

## Adding a post

1. Create `topics/{topic}/_posts/YYYY-MM-DD-{slug}.md`
2. Copy front-matter from `/topics/YYYY-MM-DD-post-template.md`
3. Place figures in `topics/{topic}/figures/`, reports in `topics/{topic}/reports/` (use unique filenames)

Front-matter example:

```yaml
---
title: Post title
description: One-line summary
status: paper-under-peer-review
update: YYYY-MM-DD
tags: [transmission-dynamics]
authors:
  - id: author_id
---
```

**Status options:** `paper-under-peer-review`, `paper-accepted-at-journal`, `paper-published-at-journal`, `real-time-report`, `report`, `comment-opinion-online`, `comment-opinion-journal`

**Tags:** `transmission-dynamics`, `severity`, `lmic-considerations`, `control-measures`, `mixing-patterns`, `healthcare-settings`, `comments-opinions`, `forecasts-and-projections`

Author IDs come from `_data/authors.yml`. Special group IDs: `ncov-group` (CMMID COVID-19 working group, 48 members), `chil-group`.

For R Markdown HTML fragment output: set `rmarkdown_html_fragment: true` in front-matter.

## Adding a Shiny app

Copy `_shinyapp/template.md` to a new file in `_shinyapp/`, edit `shinyurl` and `title` only.

## Adding a tag

Two steps required — both must be present before tag appears:
1. Create topic page in `topics/{topic}/` with `tag_filter` matching the new tag
2. Add entry to `_data/translations.yml` with `id` matching the tag and `en-gb` value

## Key files

| Path | Purpose |
|------|---------|
| `_config.yml` | Site config, plugins, permalink structure |
| `_data/authors.yml` | All author IDs and metadata |
| `_data/translations.yml` | Tag display names and i18n strings |
| `topics/YYYY-MM-DD-post-template.md` | Post template |
| `Makefile` | `make run` / `make setup` |
