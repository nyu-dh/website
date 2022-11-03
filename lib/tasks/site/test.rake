require 'html-proofer'

namespace :site do
  desc 'run html and link checks'
  task :test do
    Rake::Task["site:reset"].invoke
    Rake::Task["site:build"].invoke
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
end
