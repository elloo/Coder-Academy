class Vehicle
    attr_accessor :make, :model, :max_fuel

    def initialize(make, model, max_fuel)
        @make = make
        @model = model
        @litres = 0
        # @max_fuel = 50
        @max_fuel = max_fuel
    end

    def refuel(litres)
        @litres = (litres < @max_fuel )? litres : @max_fuel
    end

    def fuel_levels
        puts "I have #{@litres} in my tank"
    end

end

class Car < Vehicle
    def wind_up_windows
        puts "I can wind up windows"
    end
end

class Motorbike < Vehicle
    # read and write to and from the variable bikers_gear
    attr_accessor :bikers_gear
    # variable that tracks bikers gear
    def initialize(make, model, max_fuel)
        # Super is similar to yield - it'll get code from the parent class then return and execute the rest of the code
        super
        @bikers_gear = ["helmet"]
    end
    # def initialize
    #     # @max_fuel = 15
    # end

    def wheelie
        puts "I can pull a wheelie"
    end

end

vehicle = Vehicle.new("Toyota", "Corolla", 50)
car = Car.new("BMW", "Z-series",50)
low_rider = Motorbike.new("Harley Davidson", "Low Rider", 15)
# low_rider.make = "Harley Davidson"
# low_rider.model = "Low Rider"
puts car.max_fuel
puts low_rider.max_fuel

# vehicle.fuel_levels
# car.wind_up_windows
# low_rider.wheelie
# car.refuel(30)
# car.fuel_levels
# puts low_rider.max_fuel

car.refuel(30)
car.fuel_levels

car.refuel(100)
car.fuel_levels

low_rider.refuel(10)
low_rider.fuel_levels
low_rider.refuel(20)
low_rider.fuel_levels