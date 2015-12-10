puts "Give me a number"
number = gets.chomp.to_i
puts "Final number " +  (((number + 5) * 2 - 4) / 2 - number).to_s
