# Architecture

## Summary
- Canonical site data (e.g., People and Project tables) live in Google Sheets.
- Site content, theme, docs, and Jekyll configuration live in the GitHub repo.
- Rake tasks pull data from Google Sheets to create derivative CSV copies in the GitHub repo.
- GitHub action builds the site with Jekyll command, then tests and deploys the compiled static site to host.

## Repository Contents

### Directories
- `source` :: the site content and data
- `theme`  :: WiP Jekyll theme  
- `docs` :: documentation for developing, maintaining, and contributing content to the site
- `.github/workflows` :: contains files that define conditional workflows for GitHub Actions to run

### Files
- `_config.yml` :: Jekyll site configuration settings
- `.secrets.yml` :: 'secret' configuration options that are checked out locally but are *not* committed to the GitHub repo.
- `Rakefile` :: file containing development 'task' scripts written in Ruby rake format.


## Build Process
The NYU DH website is a fully static site produced by the [Jekyll](https://jekyllrb.com/) static site generator. In other words, all of the HTML pages are precompiled and no code is executed server-side.

The site can be (re)built using the `jekyll build` command locally as well as part of a deployment pipeline. In essence, this command applies the theme files in `theme` to the content in `source` to spit out styled HTML.

Specific & versioned Ruby development dependencies can be found in the [Gemfile](../../Gemfile) and [Gemfile.lock](../../Gemfile.lock).

## Deployment

The site is currently deployed to [Github Pages](https://nyu-dh.github.io) via [GitHub Action](https://github.com/nyu-dh/nyu-dh.github.io/actions) but will be deployed via FTP to [NYU Web Hosting](https://hosting.nyu.edu) on production.
