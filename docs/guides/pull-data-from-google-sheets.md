# Pulling data

## Setup
To pull up to date data from Google Sheets, you will need to have your local development environment set up (see above).

Next, you will need to add the `.secrets.yml` file to the root of your local project. It is gitignored and will not be committed to the repo.

A copy of this file lives in NYU DH Credentials Box account for you to download into your project.

## Run the tasks

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

You can then serve the site locally to view the updates.
