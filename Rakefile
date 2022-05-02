require 'html-proofer'
require 'rainbow'
require 'yaml'

@config             = File.file?('_config.yml') ? YAML.load_file('_config.yml') : {}
@secrets            = File.file?('.secrets.yml') ? YAML.load_file('.secrets.yml') : {}
@data_dir           = ['.', @config.dig('source'), '_data'].compact.join('/')
@baseurl            = ENV['BASEURL'] || @config.dig('baseurl')

@people_sheet_key   = ENV['PEOPLE_SHEET_KEY'] || @secrets.dig('PEOPLE_SHEET_KEY')
@projects_sheet_key = ENV['PROJECTS_SHEET_KEY'] || @secrets.dig('PROJECTS_SHEET_KEY')
@courses_sheet_key  = ENV['COURSES_SHEET_KEY'] || @secrets.dig('COURSES_SHEET_KEY')

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
    only_4xx: true
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
    next puts Rainbow("No people sheet key found. Is .secrets.yml present?").magenta if @people_sheet_key.nil?

    outfile = "#{@data_dir}/people.csv"
    puts "Downloading people sheet to #{outfile}"
    cmd = `wget --quiet -O #{outfile} https://docs.google.com/spreadsheets/d/#{@people_sheet_key}/export?format=csv` ; pass = $?.success?
    puts Rainbow("Done ✓").green if pass
  end

  desc 'fetch projects sheet from google drive as csv'
  task :projects do
    next puts Rainbow("No projects sheet key found. Is .secrets.yml present?").magenta if @projects_sheet_key.nil?

    outfile = "#{@data_dir}/projects.csv"
    puts "Downloading projects sheet to #{outfile}"
    cmd = `wget --quiet -O #{outfile} https://docs.google.com/spreadsheets/d/#{@projects_sheet_key}/export?format=csv` ; pass = $?.success?
    puts Rainbow("Done ✓").green if pass
  end

  desc 'fetch courses sheet from google drive as csv'
  task :courses do
    next puts Rainbow("No courses sheet key found. Is .secrets.yml present?").magenta if @courses_sheet_key.nil?

    outfile = "#{@data_dir}/courses.csv"
    puts "Downloading courses sheet to #{outfile}"
    cmd = `wget --quiet -O #{outfile} https://docs.google.com/spreadsheets/d/#{@courses_sheet_key}/export?format=csv` ; pass = $?.success?
    puts Rainbow("Done ✓").green if pass
  end
end

desc 'downsize people and project images to 300px width and convert to jpg'
task :downscale  do
  width = 300

  begin
    require 'vips'
  rescue LoadError
    puts Rainbow("LOAD ERROR: This task requires that Libvips is installed.\nPlease install it using the instructions at https://libvips.github.io/libvips/install.html.").magenta
    exit
  end

  Dir.glob("./source/media/{people,projects}/**").each do |path|
    basename = File.basename(path, File.extname(path))
    next if basename == 'default'

    image = Vips::Image.new_from_file path
    next if image.width < 301

    pathname = File.dirname(path)
    tmppath  = "#{pathname}/#{basename}-tmp.jpg"

    puts Rainbow("Resizing #{path} to #{width}px.").cyan

    resized = image.thumbnail_image width, height: 10000000
    resized.write_to_file tmppath
    FileUtils.rm path
  end

  Dir.glob("./source/media/{people,projects}/*-tmp*").each do |path|
    FileUtils.mv path, path.gsub('-tmp', '')
  end

  puts Rainbow("Done ✓").green
end
