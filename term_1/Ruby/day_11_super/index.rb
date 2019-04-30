# The file that gets executed should be called index.rb or app.rb

# When you use keyword require, it looks into the place Ruby is initially installed. When using code from the internet it makes sense.
# When using require, you can also use an absolute path
# require 'file.rb'

# Relative paths are with reference to where your current file is. Because your file is in the same folder, you can simply use the file name.
# It's good to include ./ (from the root path where my file curently is) in the relative path e.g. ./test/file.rb
require_relative 'file.rb'

class Date
    # include requires an object to be created to access the methods in the module. It's like an object method.
    # include CalendarDate
    # extend does not require an object, it can be used like a class method
    extend CalendarDate
    def self.meeting_date
        puts "print meeting date"
    end
end

Date.meeting_date

# When using include:
# Date.new.current_date
# When using extend:
Date.current_date