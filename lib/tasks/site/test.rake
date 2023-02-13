require 'html-proofer'

namespace :site do
  desc 'run html and internal link checks'
  task :test do
    Rake::Task["site:reset"].invoke
    Rake::Task["site:build:test"].invoke
    opts = {
      check_external_hash: true,
      allow_hash_href: true,
      check_html: true,
      empty_alt_ignore: true,
      assume_extension: true,
      disable_external: true,
      only_4xx: true
    }
    HTMLProofer.check_directory('./_site', opts).run
  end

  desc 'run external link checks'
  namespace :test do 
    task :linkrot do 
      Rake::Task["site:reset"].invoke
      Rake::Task["site:build:test"].invoke
      opts = {
        allow_hash_href: true,
        empty_alt_ignore: true,
        log_level: :warn,
        assume_extension: true,
        disable_external: false
      }
      HTMLProofer.check_directory('./_site', opts).run
    end
  end
end
