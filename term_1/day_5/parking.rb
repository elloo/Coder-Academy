# at the cark park entry, displau parking full if all car park spots are taken

# - get total number of parking spots available
# - each time a car is parked, incremenet a particular counter
# - increment counter till counter matches spots available
# - once the counter matches the spots available, exit the loop
# - display carpark is full

parking_spots = 10
park_empty = true
spots_taken = 0

while park_empty
    # increment spots taken cxounter
    spots_taken = spots_taken + 1
    if spots_taken >= parking_spots
        park_empty = false
    end
    puts "Cars parked: #{spots_taken}"
end

puts "Parking full"