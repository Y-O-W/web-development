# CRUD
# create
range = 1..10
p range
p range.to_a
range = 1...10
p range.to_a
# for loop range
for i in 1..10
  puts i
end
# save array in variable
musicians = ["David Gilmour", "Roger Waters", "Richard Wrigth", "Nick Mason", "Stevie Wonder"]
# for loop array
for i in 0...4
  puts musicians[i]
end
# for loop array based on length
for i in 0...(musicians.length)
  puts musicians[i]
end
# for loop array refactored
for musician in musicians
  puts musician
end