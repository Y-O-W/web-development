# Dealer's Choice
# ask for user input
puts "Which action next? [read, write, exit]"
# save user input in variable
action = gets.chomp.to_s
# if condition
if action == "read"
  puts "You are in READ mode."
elsif action == "write"
  puts "You are in WRITE mode."
elsif action == "exit"
  puts "Goodbye!"
else
  puts "Wrong input!"
end
# case condition
case action
when "read" then puts "You are in READ mode."
when "write" then puts "You are in WRITE mode."
when "exit" then puts "Goodbye!"
else puts "Wrong input!"
end