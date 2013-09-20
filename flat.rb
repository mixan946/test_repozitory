require "byebug"
class Flat
    @@ids = []
    @@sq_all = 0

    def self.sq_all
        @@sq_all
    end

    def initialize(id, sq)
        @@sq_all += sq unless @@ids.include?(id)
        @@ids << id
        @@ids.uniq!
    end
end

class Flat2
    @@ids = []
    @@sq_all = 0

    def self.sq_all
      @@sq_all
    end

    def initialize(attrs)
        raise "Error" if attrs.count > 1
        id = attrs.keys.first
        sq = attrs[id]
        @@sq_all += sq unless @@ids.include?(id)
        @@ids << id
        @@ids.uniq!
    end
end

class Flat3
    @@flats = []

    attr_reader :sq, :id

    def self.flats
      @@flats
    end

    def self.sq_all
      result = 0
      @@flats.each do |flat|
        result += flat.sq
      end
      return result
      #@@flats.inject(0){|sum, flat| sum += flat.sq }
    end

    def initialize(attrs)
        raise "Error" if attrs.count > 1
        @id = attrs.keys.first
        @sq = attrs[@id]
        @@flats << self unless @@flats.map{|i|i.id}.include?(@id)
                                      #map(&:id)
    end
end
