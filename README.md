# NYU DH (WiP)

[![gh pages deploy](https://github.com/nyu-dh/nyu-dh.github.io/actions/workflows/gh-pages-deploy.yml/badge.svg)](https://github.com/nyu-dh/nyu-dh.github.io/actions/workflows/gh-pages-deploy.yml) [![ci:test](https://github.com/nyu-dh/nyu-dh.github.io/actions/workflows/test.yml/badge.svg)](https://github.com/nyu-dh/nyu-dh.github.io/actions/workflows/test.yml) [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](code_of_conduct.md) 

## Project Tree

- `source` :: source content  
- `theme`  :: wip theme  
- `_config.yml` :: jekyll site config  
- `source/_data` :: site data files

## Contributing

[ TODO: 'STYLE GUIDE' FOR EDITS; NORMS FOR EDITORIAL WORKFLOWS ]

## Local Development

### Prerequisites
- Git
- Ruby and Bundler using Rbenv or RVM

### Steps
1. Clone the repo and change directory into it
  ``` sh
  git clone git@github.com:nyu-dh/nyu-dh.github.io.git && cd nyu-dh.github.io
  ```

2. Install Ruby dependencies
  ``` sh
  bundle install
  ```

3. Serve the site with livereload
  ``` sh
  bundle exec jekyll s --livereload
  ```

4. Run tests
  ``` sh
  bundle exec rake test
  ```

## Production Deployment

[VIA FTP GITHUB ACTION TO WH; TODO]
