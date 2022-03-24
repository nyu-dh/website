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

## Pulling data

### Setup
To pull up to date data from Google Sheets, you will need to have your local development environment set up (see above).

Next, you will need to add the `.secrets.yml` file to the root of your local project. It is gitignored and will not be committed to the repo.

A copy of this file lives in NYU DH Credentials Box account for you to download into your project.

### Run the tasks

Check the tasks available with:
``` sh
bundle exec rake --tasks
```
You should see something like:
``` sh
$ bundle exec rake --tasks
  rake build          # build the site with baseurl if applicable
  rake reset          # clear out site files
  rake test           # run html and link checks
  rake wget:courses   # fetch courses sheet from google drive as csv
  rake wget:people    # fetch people sheet from google drive as csv
  rake wget:projects  # fetch projects sheet from google drive as csv
```
Run the task you need. For example, if you want to fetch project updates, run:

``` sh
bundle exec rake wget:projects
```

This will **overwrite** the local data file, in this case `source/_data/projects.csv`.

You can then serve the site locally (see above) to view the updates.

## Production Deployment

[VIA FTP GITHUB ACTION TO WH; TODO]
