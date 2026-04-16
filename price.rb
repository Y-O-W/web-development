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

# THE PRICE IS RIGHT

# generate random number from 1..100
random = (1..100).to_a.sample # OR random = rand(1..100)

# greet the player, ask for their guess
puts "Welcome to the Price is Right!"
puts "Guess the price"

# get guess from player
guess = gets.chomp.to_i

# check the guess is a valid number in our range, keep asking until it is
while guess < 1 || guess > 100
  puts "Please enter a number between 1 - 100"
  guess = gets.chomp.to_i
end

# initialise the guess counter
counter = 1

# start the loop until the guess is correct
until guess == random
  # compare random number with guess
  if guess > random
    puts "Too high!"
  else
    puts "Too low!"
  end
  # get guess from player
  puts "Guess the price"
  # check the guess is a valid number in our range, keep asking until it is
  while guess < 1 || guess > 100
    puts "Please enter a number between 1 - 100"
    guess = gets.chomp.to_i
  end
  # increase the counter
  counter += 1 # counter = counter + 1
end
# inform player they are correct
puts "You win! You guessed in #{counter} guesses"

# LOOPS - which one to use?
# while "while this is greater than that, while this does equal this"
# until "until this is lower than this"
