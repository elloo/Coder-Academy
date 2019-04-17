# Three main uses of modules: 
# Modules are wrappers around the class used for a couple of reasons, one of them is NAMESPACING / organisations
# Another use case of module is to INCLUDE a piece of functionality into another class
# THe third use case is that you can separate your code into different files

module CalendarDate
    class Date
        # def self.current_date
            # puts "prints out current date"
        # end
        # alternate syntax
        class << self
            def show_date
                puts "prints out current date"
            end
        end
    end
end

 module MeeetingDate
    class Date
        class << self
            def show_date
                puts "prints out a meeting date"
            end
        end
    end
end

# Objects are not necessary to call class methods
# The :: symbol is called a scope resolution operator 

CalendarDate::Date.show_date
MeeetingDate::Date.show_date

# Normally, you name modules after your project or functionality
# Every keyword needs and "end"


=begin
            Another use case of module is to INCLUDE a piece of functionality into another class

            Use one module to group similar functionalities together. There is a syntax to allow specific methods from modules but not others.
=end

module SpecificFunctionality
    def swim
        puts "I can swim!"
    end
end

class Animal
end
class Fish < Animal
    include SpecificFunctionality
end

class Mammal < Animal
end

class Dog < Mammal
    include SpecificFunctionality
end
class Cat < Mammal
    include SpecificFunctionality
end

fish1 = Fish.new
cat1 = Cat.new
dog1 = Dog.new
fish1.swim
cat1.swim
dog1.swim
