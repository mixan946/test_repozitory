module Perimeter
  def perimeter
    sides.inject(:+)
  end
end

Rec < Dac
Dac < Goog

class Dac
end

class Daf
end

class Rec < Dac
end

class Goog < Rec
  include Daf
end

module Shapes
  class Rectangle
  end
end

Shapes::Rectangle

File

module Assets
end

class Assets::File
  def initialize(path)
    @path = path
  end
end

class Rectangle
    include Perimeter

    attr_accessor :width, :height

    def initialize(width, height)
        @width = width
        @height = height
    end

    def sides
      [@width, @height, @width, @height]
    end
end

class Square
  include Perimeter
    def initialize(side)
        @side = side
    end
  def sides
      [@side, @side, @side, @side]
  end
end
