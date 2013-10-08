jekyll-clean-page-urls
======================

A tiny Jekyll plugin for serving clean page urls.

## The problem

Jekyll can easily build static pages without the .html extension by including a permalink in your YAML front matter:

```yaml
---
permalink: "about"
---
```

Note that this correctly produces a page with the filename `/about`, *not* `/about/index.html`.

However, running `jekyll serve` won't work well: your `/about` page will be served without the appropriate `text/html` Content-Type, and if you have an `/index` file it won't be served up by default.

## The solution

This tiny plugin overwrites `jekyll serve`'s WEBrick configuration to add the `text/html` mime-type for files without an extension, and also gets WEBrick to serve up `/index` by default.

## Installation

Copy `_plugins/jekyll_clean_page_urls.rb` to your Jekyll project's `_plugins` directory.

Run `jekyll serve`.
