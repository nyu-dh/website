module Parsers
  module People
    @affiliated = %(exec_com affil_fac cert_student)

    def self.parse(data)
      tag_affiliated data
    end

    def self.tag_affiliated(data)
      data.map do |h|
        roles = h.fetch 'site_roles', []
        h['affiliated'] = true if roles.any? {|r| @affiliated.include? r }
        h
      end
    end
  end
end
