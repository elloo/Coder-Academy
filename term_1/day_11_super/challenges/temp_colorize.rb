# Use the colorize gem
# get temperature from user
# color text as follows:
#     > 30, .red
#     > 20, .yellow
#     > 10, .cyan
#     < 10, .blue
# convert temperature to Farenheit

require 'colorize'

puts "What is the temperature?"
temp = gets.chomp.to_i

case temp
when 30..39
    puts "The temperature is #{temp} degrees!".colorize(:red)
when 20..29
    puts "The temperature is #{temp} degrees!".colorize(:yellow)
when 10..19
    puts "The temperature is #{temp} degrees!".colorize(:cyan)
when 0..9
    puts "The temperature is #{temp} degrees!".colorize(:blue)
else
    if temp >= 40
        puts "The temperature is extremely HOT!".colorize(:white)
    else
        puts "The temperature is extremely COLD!".colorize(:white)
    end
end

def convert(c)
    f = (c * 9.0/5.0) + 32
    puts "(That's #{f}F!)"
end

convert(temp)