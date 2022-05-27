module Linters
  module Default
    #
    def self.assert_pids(data)
      data.each_with_index do |d, i|
        warn Rainbow("WARNING: project number #{i} is missing a pid") unless d.key? 'pid'
      end
      pids  = data.map{ |d| d['pid'] }
      dupes = pids.select { |p| pids.count(p) > 1 }.uniq! || []
      warn Rainbow("WARNING: The following project pids are not unique!\n#{dupes}") unless dupes.empty?
    end
  end
end
