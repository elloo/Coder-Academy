### Challenge 3 - Medium
# Create a rock-paper-scissors game!
# This should be a 2-player game. That means that once one player enters their input, the screen should clear.
# Once both players have entered their input, compare their inputs and decide who won rock-paper-scissors.
system 'clear'
puts "Player One: Scissors, paper, rock?"
player_one = gets.chomp.downcase
system 'clear'
puts "Player Two: Scissors, paper, rock?"
player_two = gets.chomp.downcase
system 'clear'

case player_one
when "scissors"
    if player_two == "scissors"
        puts "It's a draw!"
    elsif player_two == "paper"
        puts "Player One wins!"
    elsif player_two == "rock"
        puts "Player Two wins!"
    else
        puts "... that was awkward."
    end
when "paper"
    if player_two == "scissors"
        puts "Player Two wins!"
    elsif player_two == "paper"
        puts "It's a draw!"
    elsif player_two == "rock"
        puts "Player One wins!"
    else
        puts "... that was awkward."
    end
when "rock"
    if player_two == "scissors"
        puts "Player One wins!"
    elsif player_two == "paper"
        puts "Player Two wins!"
    elsif player_two == "rock"
        puts "It's a draw!"
    else
        puts "... that was awkward."
    end
else
    puts "... that was weird."
end