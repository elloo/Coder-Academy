### Challenge 2 - Easy
### Simple Bank
# This app is a very simple bank! Users should be able to use this bank to:
#   - deposit more money into their account
#   - withdraw some money from their account
#   - display their balance
#
# Extention twists:
#   - warn the user if their account is overdrawn (balance is less than 0)
#   - add extra parameters to the actions to let users choose specific accounts to work with (eg. savings, everyday, sharetrading, etc etc)
# Since every method is going to be working on the same variable, remember to use a global variable for any bank account balances!

#     - C2: If multiple bank accounts are stored in a hash, blocks can work. Similar to above, you can do nicer formatting & other logic per account this way. Blocks can also be used with things like "if block_given?"- eg. if the user specifies an account to view, show that, otherwise show a default account such as savings.

$accounts = {savings: 0.0, everyday: 0.0, sharetrading: 0.0}

####################################
#              METHODS             #
####################################

def deposit(cash, account)
    account += cash
end
def withdraw(cash, account)
    account -= cash
end
def balance(account)
    puts "You have $#{account} in this account."
end
def working_account(num)
    if num == 1
        account = $accounts[:savings]
    elsif num == 2
        account = $accounts[:everyday]
    elsif num == 3
        account = $accounts[:sharetrading]
    else
        puts "That is not an option."
    end
end

####################################
#             OPTIONS              #
####################################

while true
    puts "Which account would you like to work with? \nPress 1 for savings. \nPress 2 for everyday. \nPress 3 for sharetrading."
    choice = gets.chomp.to_i
    puts "Press 1 to deposit. \nPress 2 to withdraw. \nPress 3 to show balance. \nPress 4 to quit."
    action = gets.chomp.to_i

    if action == 1
        puts "How much would you like to deposit?"
        dollars = gets.chomp.to_f
        current_account = working_account(choice)
        deposit(dollars, current_account)
    elsif action == 2
        puts "How much would you like to withdraw?"
        dollars = gets.chomp.to_f
        current_account = working_account(choice)
        withdraw(dollars, current_account)
        if $account < 0
            puts "WARNING: Your account is overdrawn by $#{'%.2f' % $account.abs}"
        end
    elsif action == 3
        current_account = working_account(choice)
        puts "You have $#{'%.2f' % current_account}"
    elsif action == 4
        break
    else
        puts "That is not an option."
    end
end

p $accounts