# 1. Create a walk method. This should say "I have been for X walks.". Every time you call walk, the number should increase by one E.g:
# doggo = Dog.new(...)
# doggo.walk # -> I have been for 1 walks today
# doggo.walk # -> I have been for 2 walks today
# 2. Update the walk method so it only increases the walk count. Create a new method to display walks. E.g.: doggo = Dog.new(...)
# doggo.walk # -> Shouldn't print anything on screen
# doggo.walk # -> Shouldn't print anything on screen
# doggo.display_walks # -> I have been for 2 walks today
# 3. Update the walk method so you can chain walk commans. E.g.: doggo = Dog.new(...)
# doggo.walk.walk.display_walks # -> I have been for 2 walks today

class Dog

    @count = 0

    def count
        @count
    end
    def initialize
        self.class.walk
    def walk
        @count += 1
        puts "I have been for #{@count} walks today."
    end
    def count
        @count
    end
    end
end

doggo = Dog.new
doggo.walk