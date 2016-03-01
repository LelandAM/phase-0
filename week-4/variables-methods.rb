puts 'Your first name please'
first_name = gets.chomp
puts 'and your middle name?'
middle_name = gets.chomp
puts 'how about your last name?'
last_name = gets.chomp
puts first_name  + ' ' + middle_name  + ' ' + last_name + ', huh?'
puts 'is that Dutch?'
puts 'forgot it, what\'s your favorite number?'
fav_number = gets.to_i + 1
new_fav = fav_number.to_s
puts 'how about ' + new_fav + '?'
puts 'bigger is better, you know?'

#How do you define a local variable? variable_name = string or integer
#How do you define a method? use "def method_name(user input)" to set it as a method with a name and variables and make sure you close it with "end".
#What is the difference between a local variable and a method? a local variable is only active in the program it is written and a method can be used in other programs.
#How do you run a ruby program from the command line? enter "ruby program_name.rb" and it will run
#How do you run an RSpec file from the command line? enter "rspec program_name.rb" and it will tell you what the errors are or if it works.
#What was confusing about this material? What made sense? I forgot to use quotation marks on a string in the first challenge but figured it out. So far it all makes sense. 