# Time App
# ask for user input
puts "What time (hour) is it?"
# save user input in variable
time = gets.chomp.to_i
# if condition
if time < 12
  puts "Good Morning!"
elsif time >=20
  puts "Good evening!"
elsif time >= 12
  puts "Good Afternoon!"
end