# The CEO of the company wants to get an overview of all the employees in her company their respective salaries and total number of employees currently employed. Write a ruby program to display the data that CEO needs
#
# Hint: Create a Class with methods to keep track of the employee count and display employee details.
#
# Try : Implement this just using methods and then implement the same as classes and objects . List out which one worked best and why.


# Sample Test Case
#
# Name = Sarah ; Salary = 20,000
# Name = Ben ; Salary = 19,000
# Name = John ; Salary = 19,500


# Iterate on this challenge, to get the user to provide name and salary info, until user wants to exit and create objects and display total count of employees and also print out a nice message showing all the users added so far and their respective salaries.

class Employee
    attr_accessor :name, :salary
    @employee_count = 0
    @employee_info = []

### CLASS METHODS ###

    class << self
        def count
            puts "Total number of employees is #{@employee_count}."
        end
        def add(obj)
            @employee_count += 1
            @employee_info.push(obj)
        end
        def display_all
            @employee_info.each{|elem| puts "#{elem.name}'s salary is $#{elem.salary}. "}
        end
    end
    
### INSTANCE METHODS ###

    def initialize(name, salary)
        # self.class.add
        @name = name
        @salary = salary
        self.class.add(self)
        # @@employee_info.push({name: @name, salary: @salary})
    end

    def display
        puts "#{@name}'s salary is $#{@salary}"
    end
end

### END OF CLASS - LOOP BEGINS ###

input_name = ""

until input_name == "Exit"
    puts "Enter the name of the employee or 'Exit' to quit."
    input_name = gets.chomp.to_s.capitalize
    if input_name != "Exit"
        puts "Enter the salary of the employee."
        input_salary = gets.chomp.to_s 
        employee = Employee.new(input_name, input_salary)
    end
end

Employee.count
Employee.display_all