require 'html-proofer'
require 'rainbow'
require 'yaml'

@config             = YAML.load_file '_config.yml'
@secrets            = YAML.load_file '.secrets.yml'
@data_dir           = './source/_data'
@baseurl            = ENV['BASEURL'] || @config.dig('baseurl')
@people_sheet_key   = ENV['PEOPLE_SHEET_KEY'] || @secrets.dig('PEOPLE_SHEET_KEY')
@project_sheet_key  = ENV['PROJECT_SHEET_KEY'] || @secrets.dig('PROJECT_SHEET_KEY')


desc 'run html and link checks'
task :test do
  Rake::Task["reset"].invoke
  sh "bundle exec jekyll build -b '#{@baseurl}' -d '_site#{@baseurl}'"
  opts = {
    check_external_hash: true,
    allow_hash_href: true,
    check_html: true,
    disable_external: true,
    empty_alt_ignore: true,
    assume_extension: true,
    only_4xx: true,
    url_ignore: [/.*webedition\/app.*/]
  }
  HTMLProofer.check_directory('./_site', opts).run
end

desc 'clear out site files'
task :reset do
  sh "bundle exec jekyll clean"
end

desc 'build the site with baseurl if applicable'
task :build do
  sh "bundle exec jekyll build -b '#{@baseurl}'"
end

namespace :wget do
  desc 'fetch people sheet from google drive as csv'
  task :people do
    outfile = "#{@data_dir}/people.csv"
    puts "Downloading people sheet to #{outfile}"
    cmd = `wget --quiet -O #{outfile} https://docs.google.com/spreadsheets/d/#{@people_sheet_key}/export?format=csv` ; pass = $?.success?
    puts Rainbow("Done ✓").green if pass
  end

  desc 'fetch people sheet from google drive as csv'
  task :projects do
    outfile = "#{@data_dir}/projects.csv"
    puts "Downloading project sheet to #{outfile}"
    cmd = `wget --quiet -O #{outfile} https://docs.google.com/spreadsheets/d/#{@project_sheet_key}/export?format=csv` ; pass = $?.success?
    puts Rainbow("Done ✓").green if pass
  end
end
