require 'rainbow'
require 'parsers/courses'
require 'parsers/default'
require 'utils'

namespace :fetch do
  desc 'fetch courses sheet from google drive as csv'
  task :courses do
    sheet_key   = ENV['COURSES_SHEET_KEY'] || @secrets.dig('COURSES_SHEET_KEY')
    csv_file    = "#{@data_dir}/.tmp/courses.csv"
    yml_file    = "#{@data_dir}/courses.yml"

    next puts Rainbow("No courses sheet key found. Is .secrets.yml present?").magenta if sheet_key.nil?

    puts "Fetching courses from Google Drive" unless ENV['SKIP_WGET']
    Utils.wget_sheet(sheet_key, csv_file) unless ENV['SKIP_WGET']

    data  = Utils.csv_open(csv_file)
    data  = Parsers::Default.parse data

    puts "Parsing courses into #{yml_file}"
    Utils.write_to_file(data.to_yaml, yml_file)
  end
end
