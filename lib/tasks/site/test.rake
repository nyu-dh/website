require 'html-proofer'

namespace :site do
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
end
