names =["Nands", "Alex"]
numbers = ["+6434363453", "+6124542423"]

#hash : key value pair
phone_book = {"Nands" => "6434363453", "Alex" => "6124542423"}
# Access and add hash elements only through the key
puts phone_book["6434363453"]
phone_book["Aidan"] = "6359842381" # Adds key => value pair to hash

# If you want to replace a value pf a key:
phone_book["Alex"] = "2112"
puts phone_book

# METHODS
puts phone_book.keys # Displays all keys in an array
puts phone_book.compact # Deletes all nil values
phone_book.empty? # Checks if hash is empty
phone_book.include?("Alex") # Checks if a key is in the hash
phone_book.has_key?("Alex")
phone_book.has_value?("2112")
phone_book.member?("Alex")
phone_book.delete("Alex") # Deletes a key => value pair

result = phone_book.each do |key, value|
    puts "the phone number of #{key}, is #{value}."
end
puts "the result is #{result}"

puts "the result is #{result}"
map_result = phone_book.map do |key, value|
    value = "+61" + valueend
    puts "the map result is #{map_result}"