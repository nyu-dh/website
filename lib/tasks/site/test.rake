require 'html-proofer'

namespace :site do
  desc 'run html and internal link checks'
  task :test do
    Rake::Task["site:reset"].invoke
    Rake::Task["site:build:test"].invoke
    opts = {
      disable_external: true
    }
    HTMLProofer.check_directory('./_site', opts).run
  end

  desc 'run external link checks'
  namespace :test do 
    task :linkrot do 
      Rake::Task["site:reset"].invoke
      Rake::Task["site:build:test"].invoke
      opts = {
        log_level: :warn,
        disable_external: false
      }
      HTMLProofer.check_directory('./_site', opts).run
    end
  end
end
