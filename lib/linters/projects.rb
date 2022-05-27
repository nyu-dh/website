require 'rainbow'
require 'vars'

module Linters
  module Projects
    #
    def self.assert_people(projects)
      people = YAML.load_file(Vars::People.yml_file).map { |h| h['pid'] }
      projects.each do |project|
        project.dig('pis').each do |pi|
          warn Rainbow("WARNING: Published project '#{project['pid']}' references nonexisting person '#{pi}'.").orange unless people.include? pi
        end
      end
    end
    #
    def self.assert_categories(projects)
      categories = ['DH Seed Grant Recipient', 'Grad Fellowship Project', 'Other']
      projects.each do |project|
        category = project.dig 'category'
        warn Rainbow("WARNING: Published project '#{project['pid']}' references nonexisting category '#{category}'.").orange unless categories.include? category
      end
    end
  end
end
