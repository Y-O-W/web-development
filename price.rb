# The price is right
# generate random number from 1 to 100
random = (1..100).to_a.sample # random = rand(1..100)
# greet the player, ask for a number
puts "Welcome to the game!"
puts "Guess your number!"
# User Input
  guess = gets.chomp.to_i

while guess < 1 || guess > 100
  puts "Guess again!"
  guess = gets.chomp.to_i
end

# Counter
counter = 1
# Loop
until guess == random
  

# compare user input with random number
if guess == random
  
elsif guess > random
  puts "You loose, too high"
else
  puts "You loose, too low"

  
end
  puts "Guess your number!"
  guess = gets.chomp.to_i
  counter += 1 # counter = counter + 1
end

puts "You win! You guessed in #{counter} times."

# inform user about the result

# Loops
#  while
#  end
# until 
# end
# loop