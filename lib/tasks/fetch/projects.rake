require 'rainbow'
require 'parsers/projects'
require 'utils'


namespace :fetch do
  desc 'fetch projects sheet from google drive as csv'
  task :projects do
    sheet_key   = ENV['PROJECTS_SHEET_KEY'] || @secrets.dig('PROJECTS_SHEET_KEY')
    csv_file    = "#{@data_dir}/.tmp/projects.csv"
    yml_file    = "#{@data_dir}/projects.yml"
    array_keys  = %w(pis)

    next puts Rainbow("No projects sheet key found. Is .secrets.yml present?").magenta if sheet_key.nil?

    puts "Fetching projects from Google Drive" unless ENV['SKIP_WGET']
    Utils.wget_sheet(sheet_key, csv_file) unless ENV['SKIP_WGET']

    data    = Utils.csv_open csv_file
    content = Utils.to_yaml data, array_keys

    puts "Parsing projects into #{yml_file}"
    Utils.write_to_file(content, yml_file)

    sh "bundle exec jekyll pagemaster projects --force"
  end
end
