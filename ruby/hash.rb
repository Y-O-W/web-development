# Hash Data Structure
# display a list of students and their ages
# save arrays in variables
students = ["Peter", "Mary", "George", "Emma"]
students_ages = [24, 25, 22, 20]
# output should be Peter is 24, etc.
# each with index loop array
students.each_with_index do |student, index|
  p "#{student} is #{students_ages[index]} years old."
end
# result is unstable due to limitations of array data structure
# p students_ages("Peter")
# Hash uses comma separated key value pairs
# save hash in variable
paris = {
  # Key         Value
  "country" => "France",
  "monument" => "Eiffel Tower",
  "population" => "10",
  "language" => "French"
}
# CRUD
# read
p paris["country"]
# create
paris["language"] = "French"
p paris
# update hash --> hash[:key] = value
paris["monument"] = "Moulin Rouge"
p paris
# delete
paris.delete("country")
p paris
# Array uses numbers/index und Hash uses keys
# save hash in variable
paris = {
  # Key         Value
  "country" => "France",
  "monument" => "Eiffel Tower",
  "population" => "10",
  "language" => "French"
}
# each loop hash to output key value pairs
paris.each do |key, value|
  p key
  p value
  p "Paris: #{key} is #{value}"
end
# find a key inside a hash
# iterate through hash and check for a specific key ==, return true if key is available
# iniate key variable
key_present = false
# each loop hash
paris.each do |key, value|
  if key == "monument"
    key_present = true
  end
end
puts key_present
# method is long and cumbersome
# Hash Custom Methods
# find key and return true/false
p paris.key?("country")
# output keys
p paris.keys
p paris.keys.class
# Array vs. Hash
# array
cities = [["London", "England", "Big Ben"], ["Paris", "France", "Tour Eiffel"]]
# read the last element of the second array
p cities[1][2]
# hash
cities = {
  "London" => { "country" => "England", "monument" => "Big Ben", "friends" => [ "Tom", "Tim", "Thorsten" ] },
  "Paris" => { "country" => "France", "monument" => "Tour Eiffel" }
}
# better readable code for rich information/data structures
p cities["Paris"]["monument"]
p cities["London"]["friends"]
# each loop hash
cities["London"]["friends"].each do |friend|
  p "I like my friend #{friend}."  
end
# Symbols in hashes
# save hash in variable using symbols
# the key is transformed from a "String" into a symbol:
paris = {
  # Key         Value
  country: "France",
  monument: "Eiffel Tower",
  population: "10",
  language: "French"
}
p paris[:monument]
# hash as last method argument
# method html generator
# method definition simple - add in last argument as a hash
def tag_simple (name, content)
  p "<#{name}>#{content}</#{name}>" 
end
# method definition advanced - add in last argument as a hash
def tag_advanced (name, content, attr={})
# attributes in html can be coded from symbols/keys in hashes  
# initialize array
  tags_list = []
  # iterate over the final argument of the method call which is a hash
  attr.each do |key, value|
    # create a string where key='value' --> href syntax
    key_value_string = " #{key}='#{value}'"
    p key_value_string
    # add string to empty array
    tags_list << key_value_string
  end
  # join strings --> 3 strings
  joint_tags = tags_list.join
  # interpolate inside the tag
  p "<#{name}#{joint_tags}>#{content}</#{name}>"
end
# method definition advanced - refactored
def tag_advanced_refactored (name, content, attr={})
# attributes in html can be coded from symbols/keys in hashes  
  # iterate over the final argument of the method call which is a hash
  # use .map instead of .each --> no empty array needed
  # key values can be added directly to the new array in one line syntax with .join added at the end
  tags_list = attr.map { |key, value| " #{key}='#{value}'" }.join
  # use puts for cleaner output and interpolate inside the tag
  puts "<#{name}#{tags_list}>#{content}</#{name}>"
end
# method call simple
tag_simple("h1", "Hello world")
# method call advanced - call is dynamic because arguments can be added as key values in the hash (e.g. id)
tag_advanced("a", "Le Wagon", { href: "http://lewagon.org", class: "btn", id: "tag_lewagon" })
# method call advanced - refactored without curly braces
tag_advanced_refactored("a", "Le Wagon", href: "http://lewagon.org", class: "btn", id: "tag_lewagon")