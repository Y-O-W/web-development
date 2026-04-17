# Coin App
# save coin toss in variable
coin = ["heads", "tails"].sample
# ask for user input
puts "Choose heads or tails."
# save user input in variable
choice = gets.chomp.to_s
# if condition
if choice == coin
  # truthy
  result = "You win!"
else
  # falsey
  result = "You loose!"
end
# ternary operator --> conditon ? true : false
result = choice == coin ? "You win!" : "You loose!"
# ternary operator --> conditon ? true : false
choice == coin ? result = "You win!" : result = "You loose!"
# output result
puts result
