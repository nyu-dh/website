# nyu/dh (wip)

## prerequisites
- git
- rbenv or rvm


## project tree

- `src` :: site contents  
- `nyu-dh-theme` :: wip gem theme  
- `_config.yml` :: jekyll site config  
- `src/_data` :: site data files

## getting started
1. clone the repo and cd into it
  ``` sh
  git clone git@github.com:nyu-dh/nyu-dh.github.io.git && cd nyu-dh.github.io
  ```

2. install ruby dependencies
  ``` sh
  bundle install
  ```

3. serve the site with livereload
  ``` sh
  bundle exec jekyll s --livereload
  ```

4. run tests
  ``` sh
  bundle exec rake test
  ```
