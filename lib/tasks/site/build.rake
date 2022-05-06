namespace :site do
  desc 'build the site with baseurl if applicable'
  task :build do
    sh "bundle exec jekyll build -b '#{@baseurl}'"
  end
end
