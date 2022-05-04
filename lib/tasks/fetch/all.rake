namespace :fetch do
  desc 'fetch all sheets from google drive as csv'
  task :all do
    %w(courses people projects).each { |t| Rake::Task["fetch:#{t}"].invoke }
  end
end
