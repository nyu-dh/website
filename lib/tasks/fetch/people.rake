require 'rainbow'
require 'parsers/default'
require 'parsers/people'
require 'utils'

namespace :fetch do
  desc 'fetch people sheet from google drive as csv'
  task :people do
    sheet_key   = ENV['PEOPLE_SHEET_KEY'] || @secrets.dig('PEOPLE_SHEET_KEY')
    csv_file    = "#{@data_dir}/.tmp/people.csv"
    yml_file    = "#{@data_dir}/people.yml"
    array_keys  = %w(site_roles)

    next puts Rainbow("No people sheet key found. Is .secrets.yml present?").magenta if sheet_key.nil?

    puts "Fetching people from Google Drive" unless ENV['SKIP_WGET']
    Utils.wget_sheet(sheet_key, csv_file) unless ENV['SKIP_WGET']

    data  = Utils.csv_open(csv_file)
    data  = Parsers::Default.parse data, array_keys
    data  = Parsers::People.parse data

    puts "Parsing people into #{yml_file}"
    Utils.write_to_file(data.to_yaml, yml_file)

    puts Rainbow("Done ✓").green
  end
end
