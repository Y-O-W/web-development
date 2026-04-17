# frozen_string_literal: true

# Voting App
# ask for user input (age)
puts 'How old are you?'
# save input
age = gets.chomp.to_i
# check if condition is true
condition = age >= 18
puts condition

# condition if user is old enough for voting
if condition
  # What if user is old enough? --> truthy
  # puts 'You can vote!'
else
  # What if user is not old enough? --> falsey
  # puts 'You cannot vote!'
end
# condition if user is not old enough for voting
if !condition
  # What if user is not old enough? --> falsey
  puts "You cannot vote!"
else
  # What if user is old enough? --> truthy
  puts "You can vote!"
end
# condition if user is not old enough for voting
unless condition
  # What if user is not old enough? --> falsey
  puts "You cannot vote!"
else
  # What if user is old enough? --> truthy
  puts "You can vote!"
end
puts 'Good luck!'
