####################################
#              RECAP               #
####################################

# Everything is an object
# All objects belong to a class - integer, string, etc
# We can also create our own classes with their own properties

####################################
#              CLASS               #
####################################

# Classes are a backbone of OOP
    # A bunch of methods are grouped together to define properties for the objects

# Class naming convention: PascalCase
# Methods are always snake_case

    # class Animal
    #     def make_noise(noise)
    #         puts noise
    #         # puts "Moo"
    #     end
        
    #     def walk
    #         puts "I can walk"
    #     end
        
    #     def eat
    #         puts "Chomp chomp"
    #     end
    # end

# Objects and instances are the same - synonyms
    # They are copies of a class

# Create an object
    # cow = Animal.new
    # dog = Animal.new
    # cow.make_noise("moo")
    # cow.walk
    # cow.eat

    # dog.make_noise("woof")
    # dog.walk
    # dog.eat

# class Car
#     def set_model(model)
        # The below is an instance variable
        # Instance variables are accesible everywhere in that instance (object)
    #     @model = model
    #     @make = 1990
    # end

    # You cannot have a variable outside of a method
        # e.g. a variable here would throw nil
        # This is important to differentiate from an error for debugging
    # If you want to write or read a variable, you need a method

        # def get_model
        # Remember to prepend the @ to the instance variable
    #     puts @model
    # end
    # To access a variable outside of the class, you always need a method
#     def get_make
#         puts @make
#     end
# end

# create an object

# car1 = Car.new
# car1.set_model("BMW")
# Alternative syntax to set a value:
# Shows you are writing to a variable inside the method
# car1.set_model = "BMW"
# car2 = Car.new
# car2.set_model("Toyota")
# car1.get_model

# car1.get_make


##############################################
#  ALTERNATIVE FOR GETTER AND SETTER METHOD  #
##############################################


class Car
    # Below is same as     attribute_accessor():model
    attr_accessor :model # You can both read and write values
    # No methods in the class yet
    # attr_accessor provides access to set_model and get_model
        # i.e. set_model = 
            # @model = model
            # get_model = puts @model
        # attr_accessor allows multiple variable symbols e.g.
            # attr_accessor :model, :make, :type
    # Making everything an attr_accessor is bad practice
    
    attr_reader :make # You can only read / get values.
    # For when you only want an initial value

    attr_writer :colour # You can only set values
    # When you want the value but don't want to see it

    # Initialize is a method that executes by default every time an object / instance is created
    def initialize(model,make,colour)
        puts "object created"
        @model = :model
        @make = :make
        @colour = :colour
    end
end
# Create an object
car1 = Car.new("BMW", 2018, "red")
car2 = Car.new("Toyota", 2011, "rainbow")
# Write to model
car1.model = "BMW"
# Read the model
puts car1.model
# attr_accessor only allows for the = syntax, not paranthesis
puts car1.make
car1.colour = "red"
