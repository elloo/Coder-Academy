# # What is a block
# # A block is a piece of code passed to a method as an argument

# names = ["Alex", "Saad", "Sally"]

# # In the case below, name is a block
# names.each do |name|
#     puts "Welcome #{name}"
# end

# # Curly brackets can replace the do keyword
# # A block is from the start to the end of the curly brackets
# names.each { |name | 
#     puts "welcome #{name}"
#     puts "How are you #{name}?"}

# # List some methods:
#     # Puts - accepts a string and returns a nil
#     # Include? - accepts a string or array, returns true or false
#     # Has_key? - accepts a hash, returns true or false
#     # sample
#     # map
#     # capitalize

# def add(num1, num2)
#     sum = num1 + num2
#     return num1
# end
# result = add(10,20)
# puts "Sum of two numbers is #{result}."

# def greet
#     before yield 
#     yield # This is replaced by whatever is passed in the curly brackets
#     after yield # The execution of the code continues after yield, unlike return
# end
# # When passing a block, you use curly brackets
# # When passing an argument, you use paranthesis
# greet {puts "hello world"}

# # yield takes parameters / arguments
# # Yield is like calling a method in a method
# def add(num1, num2)
#     sum = num1 + num2
#     yield(sum)
#     yield (sum, diff)
# end
# add (10,20)(|sum, diff| 
#     puts "sum of two numbers is #{sum}"
#     puts "difference of two numbers is #{diff}")

# def greet
#     name = "Nands"
#     age = 10
#     yield(name, age) 
# end

# # Whatever is in the block pipes can only be used inside that block
# greet {|name, age| puts "Hello #{name}, you are #{age} years old."}

names = ["Alex", "Saad", "Sally"]
# names.each { |name| puts "Welcome #{name}"}

def my_each(names)
    i = 0
    while i < names.length
        yield(names[i])
        i += 1
    end
end
my_each(names){|name| puts "Welcome #{name}"}

# Alternative to the above
# def my_each(names)
#     for item in names
#         yield item
#     end
# end

# my_each(names){|name| puts "Welcome #{name}"}

