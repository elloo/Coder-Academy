class Employee
    attr_accessor :name, :salary
    @count = 0
    # def self.count
    #     @@count
    # end
    # def self.some_other_class_method
    # end

    # alternate code : all my class methods shopuld be placed in between class <<self and end
    class << self 
        def count
            puts "total number of employees ar #{@count}"
        end
        def add_employee
            @count +=1
        end
    end
    def initialize(name, salary)
        # data = self.class
        # @count += 1  not allowed
        puts "self in the initialize : #{self}"
        # call a class method
        self.class.add_employee
        @name = name
        @salary = salary
    end
end
employee1 = Employee.new("BOB", "20,000")
puts employee1.name
puts employee1.salary
puts Employee.count