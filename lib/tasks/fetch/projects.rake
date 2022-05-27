require 'rainbow'
require 'parsers/default'
require 'parsers/projects'
require 'utils'
require 'vars'

namespace :fetch do
  desc 'fetch projects sheet from google drive as csv'
  task :projects do
    next puts Rainbow("No projects sheet key found. Is .secrets.yml present?").magenta if Vars::Projects.sheet_key.nil?

    puts "Fetching projects from Google Drive" unless ENV['SKIP_WGET']
    Utils.wget_sheet(Vars::Projects.sheet_key, Vars::Projects.csv_file) unless ENV['SKIP_WGET']

    data  = Utils.csv_open Vars::Projects.csv_file
    data  = Parsers::Default.parse data, array_keys=%w(pis tags)
    data  = Parsers::Projects.parse data
    tags  = Parsers::Projects.pull_tags data

    puts "Parsing project tags into #{Vars::Projects.tags_file}"
    Utils.write_to_file(tags.to_yaml, Vars::Projects.tags_file)

    puts "Parsing projects into #{Vars::Projects.yml_file}"
    Utils.write_to_file(data.to_yaml, Vars::Projects.yml_file)

    Rake::Task["lint:projects"].invoke

    sh "bundle exec jekyll pagemaster projects --force"
    sh "bundle exec jekyll pagemaster project_tags --force"
  end
end
