# A group of friends have just finished lunch. Write an app to work out how much each person owes.
# Parameters:
# - Your app should ask "Enter a customer's name"
# - Your first line of code is:
# items = [{ customer: "John", item: "Soup", cost: 8.50}, {customer: "Sarah", item: "Pasta", cost: 12}, {customer: "John", item: "Coke", cost: 2.50}]
# - Your app should output, for example: "John owes $11.0"

# Bonus:

# What if any other user is input? Is there an easier way to handle it?
# Format your total so it always shows two deciaml places, e.g. $11.00
# The list of items makes our code messy. Instead, see if you can read the items from a file. (Google will help here!)
# Allow items to be added to the list. E.g. "Press 1 to add items, press 2 to work out a total".
# Store these new items to the file.


require_relative("amount-owed-list")

processing = true
while processing == true
puts "Press 1 to add items, press 2 to work out a total, press 3 to finish."
function = gets.chomp.to_i

    if function == 1
        puts "What is the customer name?"
        name = gets.chomp.capitalize
        puts "What is the item?"
        item = gets.chomp.capitalize
        puts "What is the cost?"
        cost = gets.chomp

        new_item = {customer: name, item: item, cost: cost.to_f}
        $items << new_item
        
    elsif function == 2
        puts "Enter a customer's name."
        customer_owing = gets.chomp.capitalize

        owed = 0
        # Cycle through array of hashes
        array_elem = $items.each do |hash|
            # Cycle through each hash in array
            hash.each do |key, value|
                # Check if customer name matches input name
                if hash.has_value?(customer_owing)
                    # Add cost of matching hashes note: cost is tripled
                    owed += hash[:cost]
                end
            end
        end
        # Divide by three as triple the cost of each item has been added
        owed /= 3
        puts "#{customer_owing} owes $#{'%.2f' % owed}"
    elsif function == 3
        processing = false
    else
        print "That's not an option."
    end
end