# frozen_string_literal: true

# Xmas is coming
# acces date class library --> returns not an integer number
require 'date'
# define method --> date today, date next christmas
def days_until_xmas
  today = Date.today
  xmas = Date.new(2026, 12, 24)
  days = xmas - today
  days.to_i
end

puts days_until_xmas

def days_until_xmas(target_date)
  current_year = target_date.year
  xmas = Date.new(current_year, 12, 24)
  xmas = xmas.next_year if xmas < target_date
  days = xmas - target_date
  days.to_i
end

target = Date.new(2026, 6, 23)

puts days_until_xmas(target)

# calculate days between
# return days
