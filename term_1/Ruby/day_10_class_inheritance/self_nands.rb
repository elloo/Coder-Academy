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
    attr_accessor :name, :salary
    # attr_accessor :count
    # class variables are the variable accessed by a class
    @@count = 0
    # an array that keeps track of all the objects created from this class so far
    @@employee_deets = []
    # differentiate a class method from an instance method is through the keyword self
    def self.count
        @@count
        puts "value of self in the class is #{self}"
    end
    # self at the class level points to the class
    def self.employee_deets
        @@employee_deets.each {|elem| puts "the salary of #{elem.name} is #{elem.salary}"}
    end
    
    def initialize(name, salary)
        @@count += 1
        # create and assign instance variables
        @name = name
        @salary = salary
        # self at the object level point to the object
        puts "value of self in the object is #{self}"
        @@employee_deets.push(self)
    end
    def get_employee_deets
        puts "The salary of #{@name} is #{@salary}"
    end
end

# count = 0
employee1 = Employee.new("Sarah", "20,000")
# puts "object id of employee1 is #{employee1.object_id}"
# count = count + 1
# count += 1
employee2 = Employee.new("Ben", "19,000")
# count += 1
employee3 = Employee.new("John", "19,500")
# count += 1
employee1.get_employee_deets

puts Employee.count

puts Employee.employee_deets

# puts "total number of employees are #{count}"

