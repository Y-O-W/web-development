# define array and save in variable
array = ["John", "Paul", "Seb"]
# output an element by index
p array[0]
p array[1]
p array[2]
p array[3]
# reassign the value of an element by index
array[2] = "George"
# append a new element - 3 ways
# array << "Ringo"
# array.push("Ringo")
array[3] = "Ringo"
# insert element into specific index
array.insert(0, "Paul")
# delete element by value or index, delete_at is preferred
array.delete("Ringo")
array.delete_at(1)
# output array
p array
# CRUD - Creat, Read, Update, Delete
# C --> append << or .push(value)
# R --> array[index]
# U --> array[index] = "new_value"
# D --> .delete(value) or .delete_at[index]
# initialize array
array = ["John", "Paul", "George", "Ringo"]
puts "#{array[1]} is in the band."
# loop each --> DRY code compared the writing mulitple puts statements, has internal varaible index
array.each do |index|
  puts "#{index.upcase} is in the band."
end
# refactored on one line
array.each { |index| puts "#{index} is in the band."}
# output array
p array