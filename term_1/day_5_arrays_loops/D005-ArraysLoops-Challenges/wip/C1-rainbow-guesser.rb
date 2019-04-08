### Challenge 1 - Easy
### Rainbow Checker
# Ask the user what their favourite colour is.
# Check their chosen colour against an array of colours in the rainbow.
# Tell the user whether or not their chosen colour is in the rainbow!
puts "What's your favourite colour?"
user_colour = gets.chomp.downcase
rainbow = ["red", "yellow", "pink", "green", "purple", "orange", "blue"]
if rainbow.include?(user_colour)
    puts "Your colour is in the rainbow!"
else
    puts "Your colour is not in the rainbow!"
end