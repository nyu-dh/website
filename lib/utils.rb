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

  def self.to_yaml(data, array_keys=[])
    data = compact_all data
    data = split_arrays(data, array_keys) unless array_keys.empty?
    data = convert_bools data
    data.to_yaml
  end

  def self.convert_bools(data)
    data.map do |h|
      h.each do |k,v|
        h[k] = true if v.to_s.downcase == "true"
        h[k] = false if v.to_s.downcase == "false"
      end
      h
    end
  end

  def self.compact_all(data)
    data.map do |h|
      h.compact
    end
  end

  def self.write_to_file(content, file)
    FileUtils.mkdir_p File.dirname(file)
    File.open(file, "w") { |f| f.write content }
  end

  def self.split_semicolon_string(string)
    string.to_s.split(';').map { |r| r.strip }
  end

  def self.split_arrays(data, keys)
    data.map do |hash|
      keys.each { |k|  hash[k] = split_semicolon_string(hash[k]) if hash.has_key?(k) }
      hash
    end
  end
end
