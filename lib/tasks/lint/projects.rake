require 'rainbow'
require 'linters/default'
require 'linters/projects'
require 'vars'
require 'yaml'

namespace :lint do
  desc 'lint the fetched project yaml data'
  task :projects do
    categories = %w(DH Seed Grant Recipient Grad Fellowship Project Other)
    people     = YAML.load_file(Vars::People.yml_file).map { |h| h['pid'] }
    projects   = YAML.load_file Vars::Projects.yml_file

    projects.each do |project|
      project.dig('pis').each do |pi|
        puts Rainbow("WARNING: Project '#{project['pid']}' references nonexisting person '#{pi}'.").magenta unless people.include? pi
      end
    end
  end
end
