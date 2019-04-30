# The CEO of the company wants to get an overview of all the employees in her company their respective salaries and total number of employees currently employed. Write a ruby program to display the data that CEO needs
#
# Hint: Create a Class with methods to keep track of the employee count and display employee details.
#
# Try : Implement this just using methods and then implement the same as classes and objects. List out which one worked best and why.


# Sample Test Case
#
# Name = Sarah ; Salary = 20,000
# Name = Ben ; Salary = 19,000
# Name = John ; Salary = 19,500

class Employee
    
    @count = 0

    def initialize(name, salary)
        self.class.add_employee
        @name = name
        @salary = salary
    end

    def name
        puts @name
    end

    def salary
        puts @salary
    end

    class << self # Class instance variables
        def add_employee
            @count += 1
        end
        def count
            @count
        end
    end
end

sarah = Employee.new("Sarah", "$20,000")
ben = Employee.new("Ben", "$19,000")
john = Employee.new("John", "$19,500")

p Employee.count
sarah.name
sarah.salary
ben.name
ben.salary
john.name
john.salary
