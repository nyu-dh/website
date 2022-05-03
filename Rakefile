require 'rainbow'
require 'yaml'

@config             = File.file?('_config.yml') ? YAML.load_file('_config.yml') : {}
@secrets            = File.file?('.secrets.yml') ? YAML.load_file('.secrets.yml') : {}
@data_dir           = ['.', @config.dig('source'), '_data'].compact.join('/')
@baseurl            = ENV['BASEURL'] || @config.dig('baseurl')

Dir.glob("./lib/tasks/**/*.rake").each { |r| load r }
