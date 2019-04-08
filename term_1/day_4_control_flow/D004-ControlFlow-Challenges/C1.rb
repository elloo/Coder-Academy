### Challenge 1 - Easy
# Remember that bartender challenge from last week?
# Redo it with a case statement. Add a wider range of food & drink options if it makes a case statement feel more suitable.
#
# Original challenge text:
# You are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# Write a program that asks the customer for their order.
# - If they order a cocktail, add one to the number of cocktails you need to make,
# - If they order a water, add one to the number of waters you need to make,
# - If they order a beer, add one to the number of beers you need to pour

# Print the final drinks order so you know what to make

# ****
# Cocktails sell for $22, and cost $8 to make
# Beer sell for $12, and cost $3 to pour
# Water sell for $6, and cost $0.15 to make

# Print out the total profit for the orders you have


### REMEMBER: Solve this challenge with a case statement and extra food & drink options! 

cocktails = 3
waters = 2
beers = 6

puts "What can I get for you?"
drink = gets.chomp.downcase

case drink
when /cocktail/
    cocktails += 1
when /water/
    waters += 1
when /beer/
    beers += 1
else
    puts "Sorry! We don't stock that"
end

puts "Cocktails: #{cocktails} Waters: #{waters} Beers: #{beers}"

cocktails_profit = cocktails * 22 - cocktails * 8
beers_profit = beers * 12 - beers * 3
waters_profit = waters * 6 - waters * 0.15

puts "Total profit: $#{sprintf('%.2f', cocktails_profit + beers_profit + waters_profit)}"