### Challenge 2 - Easy
### Birthday Guesser
# Using arrays of months & arrays of numbers, make the terminal guess the user's birthday.
# The user must be able to enter "yes" or "no" to keep the computer guessing.
# If the computer does guess the right birthday, the app stops.
# If the computer doesn't guess the right birthday, the app continues.
# If the user enters "quit", the app should stop. 
months = ["Jan", "Feb", "Mar", "April", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"]
thirty_one_days = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
thirty_days = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
twenty_nine_days = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]
days = []
month_num = 0
day_num = 0

while month_num <= 11
    # Assigning number of days to appropriate months
    if month_num == 1
        days = twenty_nine_days
    elsif month_num <= 6 && month_num % 2 == 0|| month_num >= 7 && month_num % 2 == 1
        days = thirty_one_days
    else 
        days = thirty_days
    end
    # Cycling through and asking abouteach day
    while day_num <= days.length - 1
        puts "Is #{months[month_num]} #{days[day_num]} your birthday?"
        answer = gets.chomp.downcase
        if answer == "no"
            day_num += 1
        elsif answer == "yes"
            puts "Hooray!"
            exit
        elsif answer =="quit"
            exit
        else
            puts "Hm."
            exit
        end
    end
    # Reset day count and start cycling through next month
    day_num = 0
    month_num += 1
end
