# frozen_string_literal: true
# Price App
# generate random number from 1 to 100 and save in variable
random = (1..100).to_a.sample # random = rand(1..100)
# generate random number from 1 to 10 and save in variable
price = rand(1..10)
# initiate empty variable for user guess and counter
guess = nil
counter = 0
# welcome user
puts 'Welcome to the game!'
# save user input in variable
# guess = gets.chomp.to_i
# save guesses in counter
# counter = 1
# iteration loop while
while guess != price
  # ask for user input
  puts 'Guess your number between 1 and 10!'
  guess = gets.chomp.to_i 
  counter += 1 # counter = counter + 1
end
# iteration loop until
until guess == price
  # ask for user input
  puts 'Guess your number between 1 and 10!'
  guess = gets.chomp.to_i 
  counter += 1 # counter = counter + 1
end
# output result
puts "You win! You guessed in #{counter} times."

while guess < 1 || guess > 100
  puts 'Guess again!'
  guess = gets.chomp.to_i
end

# Loop
until guess == random
  # compare user input with random number
  if guess == random
  elsif guess > random
    puts 'You loose, too high'
  else
    puts 'You loose, too low'
  end
  puts 'Guess your number!'
  guess = gets.chomp.to_i
  counter += 1 # counter = counter + 1
end
# output result
puts "You win! You guessed in #{counter} times."



# Loops
#  while
#  end
# until
# end
# loop

# THE PRICE IS RIGHT

# generate random number from 1..100
random = (1..100).to_a.sample # OR random = rand(1..100)

#  greet the player, ask for their guess
puts 'Welcome to the Price is Right!'
puts 'Guess the price'

# get guess from player
guess = gets.chomp.to_i

#  check the guess is a valid number in our range, keep asking until it is
while guess < 1 || guess > 100
  puts 'Please enter a number between 1 - 100'
  guess = gets.chomp.to_i
end

# initialise the guess counter
counter = 1

# start the loop until the guess is correct
until guess == random
  #  compare random number with guess
  if guess > random
    puts 'Too high!'
  else
    puts 'Too low!'
  end
  # get guess from player
  puts 'Guess the price'
  #  check the guess is a valid number in our range, keep asking until it is
  while guess < 1 || guess > 100
    puts 'Please enter a number between 1 - 100'
    guess = gets.chomp.to_i
  end
  # increase the counter
  counter += 1 #  counter = counter + 1
end
# inform player they are correct
puts "You win! You guessed in #{counter} guesses"

# LOOPS - which one to use?
# while "while this is greater than that, while this does equal this"
# until "until this is lower than this"
