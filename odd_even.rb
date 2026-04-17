# Odd Even App
# ask for user input
puts "Choose a number."
# save user input in variable
number = gets.chomp.to_i
# if condition
if number.even?
  # truthy
  puts "Number is even."
else
  # falsey
  puts "Number is odd."
end
# ternary operator
puts number.even? ? "Number is even." : "Number is odd."
