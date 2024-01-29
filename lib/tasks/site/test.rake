require 'html-proofer'

namespace :site do
  desc 'run html and internal link checks'
  task :test do
    Rake::Task["site:reset"].invoke
    Rake::Task["site:build:test"].invoke
    opts = {
      disable_external: false,
      ignore_urls: [/^(?!https*:\/\/nyu-dh.github.io\/website-media).*$/]
    }
    HTMLProofer.check_directory('./_site', opts).run
  end

  desc 'run external link checks'
  namespace :test do 
    task :linkrot do 
      Rake::Task["site:reset"].invoke
      Rake::Task["site:build:test"].invoke
      opts = {
        ignore_status_codes: [0, 500],
        check_external_hash: false,
        typhoeus: {
          followlocation: true,
          connecttimeout: 20,
          timeout: 40,
        }
      }
      HTMLProofer.check_directory('./_site', opts).run
      exit 1
    end
  end
end
