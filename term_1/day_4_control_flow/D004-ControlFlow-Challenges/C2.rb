### Challenge 2 - Easy
### Spaceship Operator Challenge
# So, that crazy "<=>" operator we briefly covered before is built for a very specific type of situation. It's called a spaceship operator - find the documentation before proceeding!
#
#
# The challenge: We're gonna build a high-score-checking app. It's gonna compare the user's input to the stored high-score and tell them if they were good/bad/etc.
#
#
# Here's the steps that your program should run:
# -  Prompt the user to enter a score (a number, integer).
# - Run the user's input through the spaceship operator and store the result as a variable.
# - Use a case statement to process that variable.
# - If their score is higher than the predefined high-score, tell the user that they are the best!
# - If their score is the same as the predefined-high-score, tell them that they are as awesome as everyone else.
# - If their score is lower than the predefined-high-score, tell them they need to be more awesome!
#
#
# Do this challenge with a spaceship operator & a case statement, not an if-else chain.

#
predefined_high_score = 100

puts "What is your score today?"
user_score = gets.chomp.to_i

comparison = user_score <=> predefined_high_score

case comparison
when 1
    puts "You are the best!"
when 0
    puts "You are as awesome as everyone else!"
when -1
    puts "You need to be more awesome!"
else
    puts "Beep. Boop."
end