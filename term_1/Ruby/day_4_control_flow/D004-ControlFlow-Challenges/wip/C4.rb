### Challenge 4 - Hard
# - Automatically get the system time in 24-hour time.
# - Find out the current timezone (zone code or hour offset, up to you).
# - Prompt the user to enter a new timezone (timezone code eg. AEDT or number eg. -7, up to you).
# - Display the current, local 24-hour time.
# - Display the time in the user's chosen timezone.
# - Display the time difference between the local timezone and the user's desired timezone.

system_time = Time.now
system_timezone = system_time.zone

puts "Please enter a new timezone code."
input_code_s = gets.chomp
input_timezone = timezone("#{input_code_s}")
puts input_timezone



# puts "Please enter a timezone offset number."
# input_timezone = gets.chomp.to_i
# system('clear')

# puts "The time now is #{system_time.hour}:#{system_time.strftime('%M')}"

# chosen_timezone = system_time.hour + input_timezone
# if chosen_timezone >= 24
#     chosen_timezone -= 24
# elsif chosen_timezone <= 0
#     chosen_timezone *= -1
# end

# puts "The time in your chosen timezone is #{chosen_timezone}:#{system_time.strftime('%M')}"
# puts "The time difference is #{input_timezone} hours"