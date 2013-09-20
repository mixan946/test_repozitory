class Rectangle
    def initialize(width, height)
        @width = width
        @height = height
    end
end

class Square < Rectangle
    def initialize(width, height)
        raise "This is not a Square" if width != height
        super
    end
end


class Gnome

  @@count = 0

  def self.count
    @@count
  end

  def initialize(attr)
    @@count+=1
    @gold = attr[:gold]
    @tall = attr[:tall]
    @dolg = attr[:dolg]
  end

  def life
    mutate{|i| i+5}
    self.mutate{|i| i+5}
    @attr[:gold] - @attr[:dolg]/(0.5 * @attr[:tall])
  end


  def mutate
    @attr.each do |key, value|
      @attr[key] = yield(value)
    end
  end
end
