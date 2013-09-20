require "byebug"

#def demostrate_block
  #yield
#end




class MyArray

    def initialize(data)
        @data = data
    end

    def map
        i = 0
        result = []
        while i < @data.length - 1
            byebug
            result << yield(@data[i])
            i += 1
        end
        result
    end
end

arr = MyArray.new([1,2,3,4,5])

arr.map do |elem|
    byebug
    elem.to_s
end




def calculate(a,b)
end
calculate(2,3) do |param1, param2|
    param1 + param2
end # 5



class Gnome
    # атрибуты гнома: кол-во золота, долг гнома и рост гнома.
    # должен быть метод у объекта гном, который будет
    # считать сколько осталось ему жить. формула: (кол-во золота - долг)/( 0.5/рост ))
    #
    # так же должен быть метод с использование блока который мутирует все атрибуты гнома
    # method{|attr| attr*0.5}
    # после мутации всех атрибутов снова посчитать остаток жизни
end




















##def test_method(*attrs)
    ##puts attrs.to_s
    ##return *attrs
##end

#test_method = lambda do |*attrs|
    #puts attrs.to_s
    #return *attrs
#end
#class Rectangle

  #def initialize(attrs)
    #raise "Unknow options passed!" unless attrs.keys.include?(:length) && attrs.keys.include?(:width) && attrs.keys.count == 2
    #@length = attrs[:length]
    #@width = attrs[:width]
  #end

  #def perimeter
    #2 * (@length + @width)
  #end

#end

#class Humanoid

  #def initialize(hands, legs, special_abilities)
    #@hands = hands
    #@legs = legs
    #@special_abilities = special_abilities
  #end

  #def walk
    #casual_walking
    ##walking
  #end

#end

#class Human < Humanoid
  #def eat_everything
    ## Eat all world
  #end
#end

#class Monkey < Humanoid

  #def walk
    #using_all_hands_and_legs
  #end

  #def eat_banan
    ## Eating banan
  #end
#end
