module Parsers
  module Projects
    def self.parse(data)
      data.map do |h|
         h.fetch('tags', []).map { |t| t.to_s.downcase.gsub(/\s+/, '-') }
         h
      end
    end

    def self.pull_tags(data)
      tags = data.map { |h| h.fetch('tags', []) }.flatten.uniq
      tags.map { |t| { 'slug' => t } }
    end
  end
end
