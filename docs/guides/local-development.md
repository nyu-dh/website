# Local Development

## Setup Dev Environment

### Prerequisites
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- Ruby via [RVM](https://rvm.io/rvm/install)

### Steps
1. Clone the repo and change directory into it
  ``` sh
  git clone git@github.com:nyu-dh/nyu-dh.github.io.git && cd nyu-dh.github.io
  ```
2. Install and/or load the relevant Ruby version
  ``` sh
  rvm install $(cat .ruby-version)
  ```
2. Install Ruby gem dependencies
  ``` sh
  bundle install
  ```

## Pull Data

Optionally, fetch most up-to-date site data. (See [Pulling Data from Google Sheets](pull-data-from-google-sheets.md))


## Serve the Site

Serve the site with livereload by running the following command.
``` sh
bundle exec jekyll s --livereload
```

Then preview the site in browser at http://127.0.0.1:4000/.

You can quit the server with `Ctl-C` on Mac.

See also [Jekyll Serve Command Options](https://jekyllrb.com/docs/configuration/options/#serve-command-options).

## Run tests

You can run the tests with the following command:

``` sh
bundle exec rake test
```

This will build the site and flag broken HTML formatting and any broken links.
