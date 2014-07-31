def hypotenuse
  puts "What is the length of side a?"
  a_side = gets.chomp
  puts "What is the length of side b?"
  b_side = gets.chomp
  a = a_side.to_i
  b = b_side.to_i
  c = Math.sqrt( a**2 + b**2 )
  puts "The length of the hypotenuse is #{c}!"
end
