require 'rainbow'
require_relative '../../parsers/people'

@people_sheet_key = ENV['PEOPLE_SHEET_KEY'] || @secrets.dig('PEOPLE_SHEET_KEY')

namespace :fetch do
  desc 'fetch people sheet from google drive as csv'
  task :people do
    next puts Rainbow("No people sheet key found. Is .secrets.yml present?").magenta if @people_sheet_key.nil?

    outfile = "#{@data_dir}/people.csv"
    puts "Downloading people sheet to #{outfile}"
    cmd = `wget --quiet -O #{outfile} https://docs.google.com/spreadsheets/d/#{@people_sheet_key}/export?format=csv` ; pass = $?.success?
    puts Rainbow("Done ✓").green if pass
  end
end
