# Store App
# ask for user input
puts "What time (hour) is it?"
# save user input in variable
time = gets.chomp.to_i
# if condition
if ((time >= 9) && (time < 12)) || ((time >= 14) && (time < 18))
  puts "The store is open now."
else
  puts "Sorry, the store is closed."
end
# if elsif condition
if ((time >= 9) && (time < 12)) 
  puts "The store is open now."
elsif ((time >= 14) && (time < 18))
  puts "The store is open now."
else
  puts "Sorry, the store is closed."
end
# use variables for conditon
morning = ((time >= 9) && (time < 12))
afternoon = ((time >= 14) && (time < 18))
# if condition refactored
if morning || afternoon
  puts "The store is open now."
else
  puts "Sorry, the store is closed."
end