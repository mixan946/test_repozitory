##def sex_type_select(array, type)
    ##if type == "М" || type == "Ж"
        ##res = array.select{|students_name| students_name.start_with?(type)}
        ##also = array - res
        ##return res, also
    ##else
        ##"bad"
    ##end
##end
#array = [1,2,3,4,5,6]

#array.each do |elem|
  #puts "<li>#{elem}</li>"
#end

#products_prices = products_array.map do |product|
    #product.price
#end
#a = array.each do |elem|
  #puts elem
  #elem + 1
#end
#puts "\n"

#b = array.map do |elem|
  #puts elem
  #elem + 1
#end
#puts "\n"

#puts a.to_s
#puts b.to_s


hash = {
    product: "Булка",
    price: 20
}

hash.each do |key, val|
  puts "#{key}, #{val}"
end

