require 'rainbow'
require 'linters/default'
require 'vars'
require 'yaml'

namespace :lint do
  desc 'lint the fetched people yaml data'
  task :people do
    people = YAML.load_file Vars::People.yml_file

    Linters::Default.assert_pids people
  end
end
