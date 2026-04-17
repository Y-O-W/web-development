# frozen_string_literal: true

# This is a learining exercise with some basic ruby code snippets

# Variable - Local

name = 'Yves Wilken'
first_name = 'Yves'
last_name = 'Wilken'

puts "#{last_name} #{first_name}"
puts name

my_name = 'Yves Wilken'
my_age = 30

puts "My name is #{my_name} and I am #{my_age} year old."

sum = 13 + 379
product = 923 * 15
quotient = 13_209 / 17

puts sum
puts product
puts quotient

# Object Oriented Programming - Property & Action
# In Ruby properties are know as instance variables and actions are known as methods.

puts(5.times { print "We *love* Ruby -- it's outrageous!" })

# Ruby - Class & Method

require 'date'

puts Date.today
puts Date.today - 1

tomorrow = Date.today + 1
puts tomorrow.strftime('%A, %d %b %Y %l:%M %p')

# define a method in Ruby
def tomorrow_2
  tomorrow_date = Date.today + 1
  tomorrow_date.strftime('%A, %d %b %Y %l:%M %p')
end

puts tomorrow_2

def full_name(first, last)
  "#{first.upcase} #{last.downcase}"
end

puts full_name('Yves', 'Wilken')

# Refactoring without return

def full_name(first, last)
  "#{first.upcase} #{last.downcase}"
end

puts full_name('Yves', 'Wilken')

# Boolean Method

def tall?(height)
  return true if height >= 180

  false
end

puts tall?(200)
puts tall?(170)
