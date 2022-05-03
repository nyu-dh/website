require 'rainbow'
require_relative '../../parsers/projects'

@projects_sheet_key = ENV['PROJECTS_SHEET_KEY'] || @secrets.dig('PROJECTS_SHEET_KEY')

namespace :fetch do
  desc 'fetch projects sheet from google drive as csv'
  task :projects do
    next puts Rainbow("No projects sheet key found. Is .secrets.yml present?").magenta if @projects_sheet_key.nil?

    outfile = "#{@data_dir}/projects.csv"
    puts "Downloading projects sheet to #{outfile}"
    cmd = `wget --quiet -O #{outfile} https://docs.google.com/spreadsheets/d/#{@projects_sheet_key}/export?format=csv` ; pass = $?.success?
    sh "bundle exec jekyll pagemaster projects --force"
  end
end
