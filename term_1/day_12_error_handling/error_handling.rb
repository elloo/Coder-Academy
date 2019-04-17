# puts "Enter your age"
# age = gets.chomp
# birth_year = 2010 - age
# puts "you were born in the year #{birth_year}"

def division(num1, num2)
    result = num1/num2
    return result
end

puts "Enter a number."
num1 = gets.chomp.to_i
puts "Enter another number"
num2 = gets.chomp.to_i
result = division(num1, num2)
puts "division of two numbers is #{result}"

# Exception or error handling predicts the error and handles the error so the app doesn't break and stop execution.

begin
    puts "Enter a number."
    num1 = gets.chomp.to_i
    puts "Enter another number"
    num2 = gets.chomp.to_i
    result = division(num1, num2)
    puts "division of two numbers is #{result}"
rescue
    # Gets executed if there was a problem encountered in the begin section
    puts "The second should not be zero"
end

puts "code continues"