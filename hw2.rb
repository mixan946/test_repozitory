require "byebug"
def translate(string)
    dictionary = {
        "1" => "один", "2" => "два",
        "3" => "три", "4" => "четыре",
        "5" => "пять", "6" => "шесть",
        "7" => "семь", "8" => "восемь",
        "9" => "девять", "0" => "нуль"
    }
    dictionary[string] || "Нет в словаре"
end

def slovation(number)
  array_of_random_numbers = Array.new(number).map{|_| rand(100).to_s.split("")}
  puts array.to_s
  array_of_random_numbers.map do |array_num|
    res_string = array_num.map{|str_num| translate(str_num)}.join(" ")
    res_string.length > 8 ? "Много букав" : res_string
  end
end
