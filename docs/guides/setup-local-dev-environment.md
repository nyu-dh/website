# Local Development

## Prerequisites
- Git
- Ruby and Bundler using Rbenv or RVM

## Steps
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
