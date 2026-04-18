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
# C --> append an element << or .push(value)
# R --> access an elelemt array[index]
# U --> reassign an element value array[index] = "new_value"
# D --> delete an element .delete_at[index] as default or .delete(value)
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
# Display a list of students and their ages
# save arrays in variables
students = ["Peter", "Mary", "George", "Emma"]
students_ages = [24, 25, 22, 20]
# output should be Peter is 24, etc.
# each with index loop array
students.each_with_index do |student, index|
  p "#{student} is #{students_ages[index]} years old."
end
# p students_ages("Peter")
