=begin

Challenge
Implement a Vehicle class. It should accept make and model properties when you create an object. 
E.g. civic = Vehicle.new("Honda", "Civic") 

Implement a Car class. It should inherit from Vehicle.
E.g. civic = Car.new("Honda", "Civic")

Implement a Motorbike class. It should also inherit from Vehicle.
E.g. low_rider = Motorbike.new("Harley Davidson", "Low Rider") 

Implement the following methods, but first, device where they should live.
refuel (should take one argument: litres)
wheelie (should display a message)
wind_up_windows (should display a message)
fuel_level (should display total litres in the tank)
Beast Mode
A car should only allow maximum 50L of petrol and a bike 15L. Keep your code DRY :)
Hint: research how `super` works.

Example:
civic = Car.new("Honda", "Civic")
civic.fuel_level # -> 0L in the tank
civic.refuel(10)
civic.fuel_level # -> 10L in the tank
civic.refuel(10)
civic.fuel_level # -> 20L in the tank
civic.refuel(100)
civic.fuel_level # -> 50L in the tank

=end

class Vehicle
    def initialize(make, model)
    end

    class Car < Vehicle
    end

    class Motorbike < Vehicle
    end
end

### TESTS ###

civic = Vehicle.new("Honda", "Civic") 
civic = Car.new("Honda", "Civic")