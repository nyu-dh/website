require 'rainbow'
require_relative '../../parsers/courses'

@courses_sheet_key = ENV['COURSES_SHEET_KEY'] || @secrets.dig('COURSES_SHEET_KEY')

namespace :fetch do
  desc 'fetch courses sheet from google drive as csv'
  task :courses do
    next puts Rainbow("No courses sheet key found. Is .secrets.yml present?").magenta if @courses_sheet_key.nil?

    outfile = "#{@data_dir}/courses.csv"
    puts "Downloading courses sheet to #{outfile}"
    cmd = `wget --quiet -O #{outfile} https://docs.google.com/spreadsheets/d/#{@courses_sheet_key}/export?format=csv` ; pass = $?.success?
    puts Rainbow("Done ✓").green if pass
  end
end
