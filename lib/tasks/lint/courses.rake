require 'rainbow'
require 'linters/default'
require 'vars'
require 'yaml'

namespace :lint do
  desc 'lint the fetched courses yaml data'
  task :courses do
    courses = YAML.load_file Vars::Courses.yml_file

    Linters::Default.assert_pids courses
  end
end
