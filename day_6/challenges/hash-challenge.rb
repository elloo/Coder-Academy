# Add to the hash: John's occupation (web developer) and hobbies (art).
# Delete John's weight from the hash
# Retrieve John's height from the hash
# Iterate through the hash so we see John's details.

person = {name: 'John', height: '2m', weight: '70kgs'}

person[:occupation] = "web developer"
person[:hobbies] = "art"

person.delete(:weight)

puts person[:height]

person.each do |key, value|
    puts "#{key}: #{value}"
end