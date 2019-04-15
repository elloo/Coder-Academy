#  The CEO of the company wants to get an overview of all the employees in her company their respective salaries and total number of employees currently employed. Write a ruby program to display the data that CEO needs
#
# Hint: Create a Class with methods to keep track of the employee count and display employee details.
#
# Try : Implement this just using methods and then implement the same as classes and objects . List out which one worked best and why.

# Sample Test Case
#
# Name = Sarah ; Salary = 20,000
# Name = Ben ; Salary = 19,000
# Name = John ; Salary = 19,500

class Employee
    attr_accessor :count
    def initialize(name, salary)
        @count += 1
        # create and assign instance variables
        @name = name
        @salary = salary
    end
    # def count
    #     @count
    # end
    def get_employee_deets
        puts "The salary of #{@name} is #{@salary}"
    end
end

# count = 0
employee1 = Employee.new("Sarah", "20,000")
# count = count + 1
# count += 1
employee2 = Employee.new("Ben", "19,000")
# count += 1
employee3 = Employee.new("John", "19,500")
# count += 1
employee1.get_employee_deets

puts Employee.count

# puts "total number of employees are #{count}"

