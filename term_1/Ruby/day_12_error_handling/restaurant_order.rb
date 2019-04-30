# user story:
# 1. user must be able to view the menu
# 2. user must be able to choose what they want
# 3. user must be able to provide quantity of the item
# 4. user must be able to order further
# 5. user should be able exit the app
# 6. user should be provided a bill to be paid

# # Algorith / Pseudocode
# 1. display a welcome message with instruction on how to use the app
# 2. display the menu
# 3. get the menu choice from the user
#     if the menu choice was to order an item take the user to place order
#     if the user wants to exit the app provide an exit message with the bill
# 4. if the menu choice was to order an item,
#  get the price of that item
#  ask for the quantity of that item
#  calculcate the total price
# 5. if the user chooses to order another time repeat step 2 - 4

# Actions:
# 1.Hash
# 2.method
# 3.loop
# 4.class

# puts "Enter yor name"
# name  = gets.chomp
class RestaurantOrder
    attr_reader :name , :bill
    def initialize(name)
        @name = name
        @bill = 0
    end
    # display a welcome message
    def welcome_msg
        puts "Welcome to Nand's kitchen, place your order by entering the item number and enter exit to exit the app"
    end

    def menu
        # create a menu
        @menu = {"1. Nachos" => 15, "2. Tacos" => 12, "3. Chips" => 5}
        # to fetch the price of each item 
        @menu_list = {1 => 15, 2 => 12, 3 => 5}

        # display the menu in a nice format
        @menu.each { |item, price| puts "#{item} ----- #{price}" }
    end
    
    def get_item_price
        @item_price = @menu_list[@user_choice]
    end

    def get_quantity
        puts "How many would you like"
        @quantity = gets.chomp.to_i
    end

    def order_bill
        @bill = @bill + @item_price * @quantity
    end

    def place_order(user_choice)
        @user_choice = user_choice
        get_item_price
        get_quantity
        order_bill
    end
end
