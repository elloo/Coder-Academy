# modules are wrappers around the class used for a couple of reasons, on of the reason is namespacing
module CalendarDate
    class Date
        # def self.current_date
        #     puts "prints out current date"
        # end
        # alternate syntax
        class << self
            def show_date
                puts "prints out current date"
            end
        end
    end
end

module MeetingDate
    class Date
        class << self
            def show_date
                puts "print out a meeting date"
            end
        end
    end
end
# I don't need an object to call class methods
# Date.show_date
# invoke a module
# ModuleName::ClassName.ClassMethod
CalendarDate::Date.show_date
MeetingDate::Date.show_date