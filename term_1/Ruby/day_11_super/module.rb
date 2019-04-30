# module has 3 use cases:
#   1. For namespacing
#       When you have the multiples of the same class name, use the project or functionality name as the module name
#   2. To drop a piece of functionality into different classes
#   3. To import code from another file




####    NAMESPACING     ###



module CalendarDate
    class Date
        # class method
        def self.show_date
            puts "print out current date"
        end
    end
end

module MeetingDate
    class Date
        def self.show_date
            puts "print out meeting date"
        end
    end
end

# Date.show_date
# ModuleName::ClassName.class_method_name
CalendarDate::Date.show_date
MeetingDate::Date.show_date



#### INCLUDE FUNCTIONALITY ####



# include a peice of functionality into any class
module SpecificFunctionality
    def swim
        puts "I can swim"
    end
    def some_other_functionality
        puts "Some other functionality to be dropped into different classes."
    end
end

class Animal
    # def self.swim
    #   puts "i can swim"
    # end
end

class Fish < Animal
    include SpecificFunctionality
end

class Mammal < Animal
end

class Dog < Mammal
    include SpecificFunctionality
    # undef excludes a method from a module - useful for if you know what's in the module. Use it carefully. Don't use it with classes. You can put commas between methods that use undef 
    # e.g. undef some_other_functionality, swim
    undef some_other_functionality
end
class Cat < Mammal
    # include the module
    include SpecificFunctionality
    undef swim
end
fish1 = Fish.new
dog1 = Dog.new
cat1 = Cat.new
fish1.swim
dog1.swim
cat1.some_other_functionality



#### IMPORTING CODE ####
####    SEE file.rb AND index.rb