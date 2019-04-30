=begin
USER STORY - Listing out what the app needs to do
1. user must be able to view the menu
2. User must be able to choose what they want
3. User must be able to provide quantity of the item
4. User must be able to order further
5. User should be able to exit the app
6. User should be provided a bill to be paid

ALGORITHM / PSEUDOCODE
1. Display a welcome message with instruction on how to use the app
2. Display the menu
3. Get the menu choice from the user:
    If the menu choice was to order an item, take the user to place order
    If the user wants to exit the app, provide an exit message with the bill
4.  If the menu choice was to order an item:
    Get the price of that item
    Ask for the quantity of that item
    Calculate the total price
5. If the user chooses to order another item, repeat steps 2 to 4.

ACTIONS:
1. Hash
2. Method
3. Loop
4. Class

FLOWCHART
=end

class RestaurantOrder
    attr_reader :name
    def initialize(name)
        @name = name
    end
    # Display a welcome message
    def welcome_msg
        puts "Welcome to Ewe Lin's Kitchen, place your order by entering the item name and enter 'exit' to exit the app"
    end
    def menu
        # Create a menu
        # Cannot use symbols when the name is two words
        @menu = {"1. Nachos" => 15, "2. Tacos" => 12, "3. Chips" => 5}
        # To fetch the price of each item:
        @menu_list = {1 => 15, 2 => 12, 3 => 5}

        # Display the menu in a nice format
        @menu.each { |item, price| puts "#{item} ----- $#{price}"}
    end
    def get_item_price(user_choice)
        @item_price = @menu_list[@user_choice]
    end
    def get_quantity
        puts "How many would you like?"
        @quantity = gets.chomp.to_i
    end
    def order_bill
        @bill = @item_price * @quantity
    end
    def place_order(user_choice)
        @user_choice = user_choice
        get item_price
        get quantity
        order_bill
    end
end
customer1 = RestaurantOrder.new("Jo")
customer1.welcome_msg

# Repeat following until user wants to exit
exit = false
until exit
customer1.menu
# get the input from the user
user_choice = gets.chomp.to_i

case user_choice
when 1, 2, 3
    # place order
    customer1.place_order(user_choice)
when 0
    # exits app
    puts "Thanks for coming, #{customer1.name}, your bill is #{customer1.bill}"
    # Exit the loop
    exit = true
else
    # invalid key message
    puts "invalid key, item not on menu"
end