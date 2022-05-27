require 'rainbow'
require 'parsers/default'
require 'parsers/people'
require 'utils'
require 'vars'

namespace :fetch do
  desc 'fetch people sheet from google drive as csv'
  task :people do
    next puts Rainbow("No people sheet key found. Is .secrets.yml present?").magenta if Vars::People.sheet_key.nil?

    puts "Fetching people from Google Drive" unless ENV['SKIP_WGET']
    Utils.wget_sheet(Vars::People.sheet_key, Vars::People.csv_file) unless ENV['SKIP_WGET']

    data  = Utils.csv_open Vars::People.csv_file
    data  = Parsers::Default.parse data, array_keys=%w(site_roles)
    data  = Parsers::People.parse data

    puts "Parsing people into #{Vars::People.yml_file}"
    Utils.write_to_file data.to_yaml, Vars::People.yml_file

    puts Rainbow("Done ✓").green

    Rake::Task["lint:people"].invoke
  end
end
