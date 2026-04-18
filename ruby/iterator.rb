# syntax iterator array
# save array in variable
musicians = ["David Gilmour", "Roger Waters", "Richard Wrigth", "Nick Mason", "Stevie Wonder"]
# each loop array greet musicians
musicians.each do |musician|
  puts "Greetings, fellow #{musician}."
end
# each with index loop array ordered list musicians
musicians.each_with_index do |musician, index|
  puts "#{index + 1} - #{musician}"
end
# map loop new transformed array upcased musicians, save new array in variable
upcased_musicians = musicians.map do |musician|
  musician.upcase
end
#output new array
p upcased_musicians
p musicians
# map loop new transformed array first name musicians
first_name_musicians = musicians.map do |musician|
  musician.split.first
end
# output new array
p first_name_musicians
# count loop array musicians starting with r
r_musicians = musicians.count do |musician|
  # condition or some code that runs true or false (?)
  musician.start_with?("R")
end
# output result as integer
p r_musicians
# loops can always be done with the each statement, but get more complex and larger that way
# initiate counter
counter = 0
# each loop array musicians starting with r
musicians.each do |musician|
  if musician.start_with?("R")
    counter += 1
  end
end
# output result as integer
p counter
# select loop new array musicians starting with r
r_musicians = musicians.select do |musician|
  # condition or some code that runs true or false (?)
  musician.start_with?("R")
end
# output new array
p r_musicians
# find loop array musicians
f_musician = musicians.find { |musician| musician.split(" ").first == "Nick" }
# output result as string
p f_musician