cocktails = 3.0
waters = 2.0
beers = 6.0

puts "What would you like to order?"
order = gets.chomp.downcase

if order =~ /cocktail/
    cocktails += 1.0
elsif order =~ /water/
    waters += 1.0
elsif order =~ /beer/ 
    beers += 1.0
else
    puts "Sorry! We don't have that."
end

puts "Cocktails: #{cocktails.to_i} Waters: #{waters.to_i} Beers: #{beers.to_i}"

profit_cocktails = cocktails * 22.0 - cocktails * 8.0
profit_waters = waters * 6.0 - waters * 0.15
profit_beers = beers * 12.0 - beers * 3.0
total_profit = profit_cocktails + profit_waters + profit_beers

puts "Total Profit: $#{'%.2f' % (total_profit)}"

