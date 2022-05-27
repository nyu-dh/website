require 'rainbow'
require 'parsers/courses'
require 'parsers/default'
require 'utils'
require 'vars'

namespace :fetch do
  desc 'fetch courses sheet from google drive as csv'
  task :courses do
    next puts Rainbow("No courses sheet key found. Is .secrets.yml present?").magenta if Vars::Courses.sheet_key.nil?

    puts "Fetching courses from Google Drive" unless ENV['SKIP_WGET']
    Utils.wget_sheet(Vars::Courses.sheet_key, Vars::Courses.csv_file) unless ENV['SKIP_WGET']

    data  = Utils.csv_open(Vars::Courses.csv_file)
    data  = Parsers::Default.parse data

    puts "Parsing courses into #{Vars::Courses.yml_file}"
    Utils.write_to_file(data.to_yaml, Vars::Courses.yml_file)

    puts Rainbow("Done ✓").green
    
    Rake::Task["lint:courses"].invoke
  end
end
