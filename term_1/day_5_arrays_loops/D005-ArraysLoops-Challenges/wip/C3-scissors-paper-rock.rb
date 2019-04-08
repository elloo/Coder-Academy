### Challenge 3 - Medium
### Rock Paper Scissors: The Best Way
# Create a rock-paper-scissors game!
# Like yesterday's challenge, but with arrays & loops.
#
# The game should follow these steps:
#   - ask the player for their choice of rock, paper or scissors
#   - once the player makes their choice, the computer player (AI!) should randomly choose a choice too
#   - decide who the winner is and display the winner
#   - ask the user if they would like to play again
#           - if yes, the game repeats
#           - if no, the game stops
#
# Remember:
# - Rock beats scissors
# - Scissors beats paper
# - Paper beats rock
# ... Is there a sequence or order to that RPS match-up?
#
# This challenge relies on some tricks & pre-made methods that Ruby has for Arrays.
# So, check the Ruby documentation for Arrays!
#
# Here's an array to start you off:
#
possible_choices = ["rock", "paper", "scissors"]
again = true

until again == false
    puts "Rock, paper, scissors?"
    player_input = gets.chomp.downcase
    possible_choices.include?(player_input)
    # ai_move = Random.new
    # ai_move = ai_move.rand(3)
    ai_move = possible_choices.sample

    case player_input
    when "rock"
        if possible_choices[ai_move] == "rock"
            puts "AI move: #{possible_choices[ai_move]}"
            puts "It's a draw!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        elsif possible_choices[ai_move] == "paper"
            puts "AI move: #{possible_choices[ai_move]}"
            puts "The AI wins!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        elsif possible_choices[ai_move] == "scissors"
            puts "AI move: #{possible_choices[ai_move]}"
            puts "You win!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        else
            puts "That's not a choice!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        end
    when "paper"
        if possible_choices[ai_move] == "rock"
            puts "AI move: #{possible_choices[ai_move]}"
            puts "You win!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        elsif possible_choices[ai_move] == "paper"
            puts "AI move: #{possible_choices[ai_move]}"
            puts "It's a draw!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        elsif possible_choices[ai_move] == "scissors"
            puts "AI move: #{possible_choices[ai_move]}"
            puts "The AI wins!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        else
            puts "That's not a choice!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        end
    when "scissors"
        if possible_choices[ai_move] == "rock"
            puts "AI move: #{possible_choices[ai_move]}"
            puts "The AI wins!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        elsif possible_choices[ai_move] == "paper"
            puts "AI move: #{possible_choices[ai_move]}"
            puts "You win!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        elsif possible_choices[ai_move] == "scissors"
            puts "AI move: #{possible_choices[ai_move]}"
            puts "It's a draw!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        else
            puts "That's not a choice!"
            puts "Do you want to play again? (Y/N)"
            keep_playing = gets.chomp.downcase
            if keep_playing == "y"
                again = true
            elsif keep_playing == "n"
                again = false
            else
                again = false
            end
        end
    end
end