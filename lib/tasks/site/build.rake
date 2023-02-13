namespace :site do
  desc 'build the site with baseurl if applicable'
  task :build do
    sh "bundle exec jekyll build -b '#{@baseurl}'"
  end
  namespace :build do
    desc 'build the site with dev config for tests'
    task :test do
      sh "JEKYLL_ENV=development bundle exec jekyll build -b '#{@baseurl}' --config _config.yml,_dev.yml"
    end
  end
end
