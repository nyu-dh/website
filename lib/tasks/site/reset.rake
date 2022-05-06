namespace :site do
  desc 'clear out site files'
  task :reset do
    sh "bundle exec jekyll clean"
  end
end
