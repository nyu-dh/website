module Vars
  module Courses
    #
    def self.sheet_key
      ENV['COURSES_SHEET_KEY'] || $secrets.dig('COURSES_SHEET_KEY')
    end
    #
    def self.csv_file
      "#{$data_dir}/.tmp/courses.csv"
    end
    #
    def self.yml_file
      "#{$data_dir}/courses.yml"
    end
  end

  module People
    #
    def self.sheet_key
      ENV['PEOPLE_SHEET_KEY'] || $secrets.dig('PEOPLE_SHEET_KEY')
    end
    #
    def self.csv_file
      "#{$data_dir}/.tmp/people.csv"
    end
    #
    def self.yml_file
      "#{$data_dir}/people.yml"
    end
  end

  module Projects
    #
    def self.sheet_key
      ENV['PROJECTS_SHEET_KEY'] || $secrets.dig('PROJECTS_SHEET_KEY')
    end
    #
    def self.csv_file
      "#{$data_dir}/.tmp/projects.csv"
    end
    #
    def self.yml_file
      "#{$data_dir}/projects.yml"
    end
    #
    def self.tags_file
      "#{$data_dir}/project_tags.yml"
    end
  end
end
