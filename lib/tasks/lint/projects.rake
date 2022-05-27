require 'rainbow'
require 'linters/default'
require 'linters/projects'
require 'vars'
require 'yaml'

namespace :lint do
  desc 'lint the fetched project yaml data'
  task :projects do
    projects = YAML.load_file Vars::Projects.yml_file

    Linters::Default.assert_pids projects
    Linters::Projects.assert_categories projects
    Linters::Projects.assert_people projects
  end
end
