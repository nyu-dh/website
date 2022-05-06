require 'csv'
require 'fileutils'
require 'json'
require 'yaml'

module Utils
  def self.wget_sheet(sheet_key, csv_file)
    FileUtils.mkdir_p File.dirname(csv_file)
    cmd = `wget --quiet -O #{csv_file} https://docs.google.com/spreadsheets/d/#{sheet_key}/export?format=csv` ; pass = $?.success?
  end

  def self.csv_open(file)
    CSV.open(file, headers: :first_row).map(&:to_h)
  end


  def self.write_to_file(content, file)
    FileUtils.mkdir_p File.dirname(file)
    File.open(file, "w") { |f| f.write content }
  end
end
