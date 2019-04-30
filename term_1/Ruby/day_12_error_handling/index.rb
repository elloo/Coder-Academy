require_relative 'restaurant_order.rb'
customer1 = RestaurantOrder.new("JO")
customer2 = RestaurantOrder.new("David")

customer1.welcome_msg
# repeat following step until user wants to exit
exit = false
until exit
    customer1.menu
    # get the input from the user
    user_choice = gets.chomp.to_i
    case user_choice
        when 1,2,3
            # place order
            customer1.place_order(user_choice)
        when 0
            #exit the app
            puts "Delighted to have you at our kitchen, #{customer1.name}, and your bill is $#{customer1.bill}"
            # exit the loop
            exit = true
        else
            # invalid key message
            puts "invalid key, item not on menu try again"
    end
end
