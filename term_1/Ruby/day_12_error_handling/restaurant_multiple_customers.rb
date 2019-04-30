# Actions: user stories
# user must be able to view the menu
# user must be able to place order
# by selecting item and quantity
# user must be given an option to order more than 1 item.
# based on the item and quantity total bill must be generated.

# Algorithm: pseudo code:
# 1. show a welcome screen and prompt user to select a menu item
# 1. display menu in a user readable format
# 2. menu must contain item and its cost
# 3. user should be prompted to select an item from the menu
# if user selects any of the item numbers call a method to get quantity
# if user want to exit show a exit message and provide total bill
# 4. user should be asked to enter quantity of that item
# 5. user should be prompted to select any further items if they like
# 6. ask quantity of the same
# 7. calculate total billing price, once user wishes to exit(completes ordering)
# 8. generate a separate bill for each customer(each order)

# What would I need to use
# 1. hash -> to store menu item and its price
# 2. loop -> to get the user to keep ordering
# 3. methods -> get the item price based on the item and calculate total price based on the quantity
# 4. Ordering process is same , but bill genearted will be different
# 5. Hence we need a class for Restaurant and customer_bill for each customer.

class RestaurantOrder
    attr_accessor :bill, :name
    def initialize(name)
        @name = name
        @bill = 0
    end

    def welcome_msg
        puts " Hello Welcome to Nayak's Kitchen"
    end

    def menu
        puts "please place your order by selecting a number against the menu and hit E to exit"
        menu_items = {"1.burger" => 10, '2.chesse burger' => 15, '3.coke' => 2 }
        # to avoid users making an spelling mistakes while typing and to provide good user experience pass the number against the menu item instead of actual item
        # if further items are added to the menu update the case check in the loop
        @menu_list = {1 => 10, 2 => 15, 3 => 2}
        menu_items.each {|item,price| puts "#{item}------#{price}"}
    end

    def get_quantity
        puts "How many would you like"
        @quantity = gets.chomp.to_i
    end

    def order_price(item_number)
        @price_for_the_order = @menu_list[item_number]
        # puts "price for the order is #{@price_for_the_order}"
    end

    def total_bill
        @bill = @bill + (@price_for_the_order * @quantity)
    end

    def place_order(item_number)
        # get quantity
        # price for that order
        # calculate order bill
        get_quantity
        order_price(item_number)
        total_bill
    end
end

class CustomerOrder < RestaurantOrder
    def customer_order
        welcome_msg
        exit = false
        until exit
            menu
            menu_choice = gets.chomp.to_i
            case menu_choice
                when 1,2,3
                    place_order(menu_choice)
                # text when converted to integer will be 0
                when 0    
                    puts "We are delighted to have you at Nayak's kitchen #{name}, here is your bill  $#{bill}"
                    exit = true
                else
                    puts "invalid key try again"
                end
        end
    end

    def save_bill
        # save a copy of the bill to a text file
    end
end

customer1 = CustomerOrder.new("BOB")
customer2 = CustomerOrder.new("JACOB")
customer1.customer_order
puts "---------------------------------"
customer2.customer_order








