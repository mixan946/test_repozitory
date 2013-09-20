input_numbers = gets.gsub("\n", "").split(",")
input_array = gets.gsub("\n","").split(",")
hash = {}
input_numbers.each do |num|
  hash[num] = input_array.count(num)
end
hash.each do |k,v|
  puts "#{k}-#{v}"
end
