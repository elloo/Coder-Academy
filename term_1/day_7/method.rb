# Methods are the verbs of programming
# Variables are the nouns of programming

# Group sequence of instructions together to perform a certain task
# tie_shoe_laces
# grab shoe laces 
# twist and tie them around
# tie a knot

# Syntax
# def name_of_the_method
#     code
# end

# # Method definition. Needs to be before method call because it's an interpreter not a compiler.
# def tie_shoe_laces
#     puts "grab shoe laces"
#     puts "twist and tie them around"
#     puts "tie a knot"
# end

# # Method call. Multiple calls allowed.
# tie_shoe_laces

# DRY: Do not Repeat Yourself
# If instructions are getting repeated, define them in a method

# puts "How to make rice"
# puts "Add water to sauce pan"
# puts "Place sauce pan on stove"
# puts "Bring water to boil"
# puts "Add rice"
# puts "Cook for 10 minutes"
# puts "How to make Spaghetti"
# puts "Add water to sauce pan"
# puts "Place sauce pan on stove"
# puts "Bring water to boil"
# puts "Add pasta"
# puts "Cook for 15 minutes"


# Arguments or parameters are placed into methods
# If the number of arguments are not what is expected, an error occurs
# def cook (item, time)
#     puts "How to cook #{item}"
#     puts "Add water to sauce pan"
#     puts "Bring water to boil"
#     puts "Add #{item}"
#     puts "Cook for #{time} minutes"
# #   code
# end

# cook("rice", 10)
# cook("pasta", 15)

# # Splat (*) operator can have different numbers of arguments
# # Arguments are stored in an array
# def cook(*data)
#     p data # prints out arguments in an array. Can also use puts.
# end

#method_name(1, 2, 3)

# Methods can return values outside of the scope of the method
# The keyword return says evaluate the code and return the value

# Multiple uses of the keyword return would return the first usage then break out of the loop.

# By default, Ruby returns the last line that is executed
# The below would return the same answer without the keyword return
# NOTE: The paranthesis are not needed when calling a method
# def add(num1, num2)
#     return sum = num1 + num2
# end

# answer = add(1,2)
# puts "The sum of two numbers is #{answer}"

# Puts is a method in Ruby that returns the value nil

# Nil is a falsy value
age = 10
if false
    puts "allowed in bar"
elsif # Ruby removes the spaces until it finds a condition (the puts statement)
    puts "not allowed" # This gets printed but returns nil (false)
else
    puts "else case" # This also gets printed
end