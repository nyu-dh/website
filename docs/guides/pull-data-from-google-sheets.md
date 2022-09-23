# Pulling Data from Google Sheets

## Setup
To pull up-to-date data from Google Sheets, you will need to have your [local development environment set up](local-development.md#setup-dev-environment).

Next, you will need to add the `.secrets.yml` file to the root of your local project. (It is gitignored and will not be committed to the repo.)

A copy of this file lives in NYU DH Credentials Box account for you to download into your project. (The Box file will need to be renamed from `secrets.yml` to `.secrets.yml`)

## Run the tasks

Check the tasks available with:
``` sh
bundle exec rake --tasks
```
You should see something like:
``` sh
$ bundle exec rake --tasks
  rake fetch:all        # fetch all sheets from google drive as csv
  rake fetch:courses    # fetch courses sheet from google drive as csv
  rake fetch:people     # fetch people sheet from google drive as csv
  rake fetch:projects   # fetch projects sheet from google drive as csv
  rake media:downscale  # downsize people and project images to 300p...
  rake site:build       # build the site with baseurl if applicable
  rake site:reset       # clear out site files
  rake site:test        # run html and link checks
```
Run the task you need. For example, if you want to fetch project updates, run:

``` sh
bundle exec rake fetch:projects
```

This will overwrite the local temporary data file (in this case `source/_data/.tmp/projects.csv`) and then create or overwrite the yaml file used by the site (in this case `source/_data/projects.yml`). Most importantly, the task will split configured array columns on `;` and convert the values to yaml arrays. For example, the `pis` column in the Projects spreadsheet might have a value like `wolf; augst`. This task will convert that to proper yaml array, e.g., 
```yaml 
pis:
  - wolf
  - augst
```

You can then serve the site locally to view the updates. (See: [Serving the Site Locally](local-development.md#serve-the-site))
