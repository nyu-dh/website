module Parsers
  module Default
    def self.parse(data, array_keys=[])
      data = inject_order data
      data = compact_all data
      data = split_arrays(data, array_keys) unless array_keys.empty?
      data = convert_bools data
      data = drop_not_done data
      data
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
      data.map { |h| h.compact }
    end

    def self.drop_not_done(data)
      data.reject { |h| !h['done'] }
    end

    def self.split_semicolon_string(string)
      string.to_s.split(';').map { |r| r.strip }
    end

    def self.split_arrays(data, keys)
      data.map do |hash|
        keys.each { |k| hash[k] = split_semicolon_string(hash[k]) if hash.has_key?(k) }
        hash
      end
    end

    def self.inject_order(data)
      data.map.with_index do |h, i|
        h['order'] = i.to_s.rjust(3, "0")
        h
      end
    end
  end
end
