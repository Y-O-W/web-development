# A multi-line block works as a method, it returns the last statement executed.
# save array in variable
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
# block returns upcased_first_name 
upcased_first_names = musicians.map do |musician|
  first_name = musician.split.first
  upcased_first_name = first_name.upcase
  puts "[DEBUG] #{musician}'s first name is #{upcased_first_name}"

  upcased_first_name
end
# method definition timer which can call and execute blocks, method is stored in memory
def timer
  # start timer
  start_time = Time.now
  # yield is a method that can take a code block
  # yield calls the code block as an argument and execute it
  # yield is part of the control flow --> goes back to the call and executes the block
  yield
  # end timer
  end_time = Time.now
  # calculate time elapsed
  elapsed_time = end_time - start_time
  # output result in seconds
  puts "Elapsed Time: #{elapsed_time} seconds."
end
# method call with a block
timer do
  puts "Doing a bit a work..."
  sleep(2)
  puts "I'm done now;)"
end
# method call with a block
timer do
  puts "Doing a lot a work..."
  sleep(4)
  puts "I'm done now;)"
end
# customize a greeting method with a block
# method definition that takes arguments and which can call and execute a block takes an argument from the method (e.g. full_name)
def beautify_name(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  if block_given?
    yield(full_name)
  else
    return full_name
  end
end
# method call with arguments but without a block
hello = beautify_name("john", "lennon")
# output method result
puts hello
#method call with arguments and a block that takes an argument from the method (e.g. full_name)
message = beautify_name("john", "lennon") do |name|
  "Greetings #{name}, you look quite fine today!"
end
#output method result
puts message
#method call with arguments and a block that takes an argument from the method (e.g. full_name) in french
message_french = beautify_name("john", "lennon") do |name|
  "Bonjour #{name}, comment allez-vous!"
end
#output method result
puts message_french
