### INSTALLING / UNINSTALLINGGEMS ###

# gem install <<gem name>>
# gem uninstall colorize - might be needed for security issues



### USING GEM BUNDLER ###

# gem install bundler - shows gems installed on computer and that need to be installed
# bundle init - creates a file called gemfile
# bundle add <<gem name>> - you need to manually add gems to the gemfile
# bundle install - install all gems on the gemfile

require 'colorize.rb'

puts "This is blue".colorize(:blue)
puts "This is light blue".colorize(:red)
