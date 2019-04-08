# Create a ruby application that requests the name of a classmate, and displays their birthday and your birthday. Use at least one Hash and one Array in the solution.

# Bonus:
# Display the number of days between your birthdays.
# Create a method to display their star sign based on their birthday.
# Someone's probably already coded this date to star sign functionality - replace your method with a gem

require 'date'
require 'zodiac'

puts "What is your name?"
user = gets.chomp.capitalize
puts "What is your birth year?"
user_year = gets.chomp.to_i
puts "What is your birth month?"
user_month = gets.chomp.to_i
puts "What is your birth day?"
user_day = gets.chomp.to_i

# Array of hashes with user details and my details
birthdays = [{name: user, birth_year: user_year, birth_month: user_month, birth_day: user_day}, {name: "Ewe Lin", birth_year: 1991, birth_month: 01, birth_day: 11 }]

# .each method iterates through hashes in birthday array and outputs the dates
birthdays.each do |hash|
    puts "#{hash[:name]}'s birthday is #{hash[:birth_day]}/#{hash[:birth_month]}/#{hash[:birth_year]}."
end

# Creating new Date objects to calculate days between two birthdays
user_bday = Date.new(user_year, user_month, user_day)
my_bday = Date.new(1991, 01, 11)
# Use of .abs ensures absolute value is returned, not a negative value
puts "#{(my_bday - user_bday).to_i.abs} days between our birthdays."

# Using zodiac gem to find star sign
puts "#{user}'s star sign is #{user_bday.zodiac_sign}"

# Method to display star sign (replaced with gem)
# def star_sign(user, month, day)
#     if (month == 3 && day >= 21 && day <= 31) || (month == 4 && day <= 19 && day > 0)
#         puts "#{user}'s star sign is Aries."
#     elsif (month == 4 && day >= 20 && day <= 30) || (month == 5 && day <= 20 && day > 0)
#         puts "#{user}'s star sign is Taurus."
#     elsif (month == 5 && day >= 21 && day <= 31) || (month == 6 && day <= 20 && day > 0)
#         puts "#{user}'s star sign is Gemini."
#     elsif (month == 6 && day >= 21 && day <= 30) || (month == 7 && day <= 22 && day > 0)
#         puts "#{user}'s star sign is Cancer."
#     elsif (month == 7 && day >= 23 && day <= 31) || (month == 8 && day <= 22 && day > 0)
#         puts "#{user}'s star sign is Leo."
#     elsif (month == 8 && day >= 23 && day <= 31) || (month == 9 && day <= 22 && day > 0)
#         puts "#{user}'s star sign is Virgo."
#     elsif (month == 9 && day >= 23 && day <= 30) || (month == 10 && day <= 22 && day > 0)
#         puts "#{user}'s star sign is Libra."
#     elsif (month == 10 && day >= 23 && day <= 31) || (month == 11 && day <= 21 && day > 0)
#         puts "#{user}'s star sign is Scorpio."
#     elsif (month == 11 && day >= 22 && day <= 30) || (month == 12 && day <= 21 && day > 0)
#         puts "#{user}'s star sign is Sagittarius."
#     elsif (month == 12 && day >= 22 && day <= 31) || (month == 1 && day <= 19 && day > 0)
#         puts "#{user}'s star sign is Capricorn."
#     elsif (month == 1 && day >= 20 && day <= 31) || (month == 2 && day <= 18 && day > 0)
#         puts "#{user}'s star sign is Aquarius."
#     elsif (month == 2 && day >= 19 && day <= 30) || (month == 3 && day <= 20 && day > 0)
#         puts "#{user}'s star sign is Pisces."
#     else
#         puts "#{user}'s star sign is unknown."
#     end
# end

# star_sign(user, user_month, user_day)