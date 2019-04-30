### Challenge 1 - Easy
### Wishlist App
# Create an app that asks the user what they want and display a list of everything that they want.
# Ideally this app should repeat until the user chooses to quit.
# So there should be:
#   - a loop to keep the app running that simply asks for user input
#   - a method with a parameter that adds the user input to an array
#   - a method to display the contents of an array
# Global variables may be helpful here!

$list = []

def list_add (item)
    $list << item
end

def display_list
    puts $list
end

while true
    puts "What do you wish for? (Alternatively, type \"show list\" or \"quit\")"
    item = gets.chomp.to_s.downcase
    if item == "quit"
        break
    elsif item == "show list"
        display_list
    else
        list_add (item)
    end
end

