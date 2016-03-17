# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: one of the input strings, selected at random
# Steps: define sides, select one at random


#Initial Solution

class Die
  def initialize(labels)
  	@die = labels
  	unless @die.length >= 1
  		raise ArgumentError.new "You need sides on your dice"
  	end	
  end

  def sides
  	p @die.length	
  end

  def roll
  	p "#{@die.sample}"
  end

end


labels = ['Skull', 'Dumptruck', '@#&$', 'Bacon', 'Hygge', 'A Natural 20']
#raise argument error labels = []
new_roll = Die.new(labels)
new_roll.sides
new_roll.roll

# Refactored Solution

# class Die                         #defines the class
#   def initialize(labels)          #starts the class and defines argument
#   	@die = labels					#creates instance variable
#   	unless @die.length >= 1         #creates new ArgumentError
#   		raise ArgumentError.new "You need sides on your dice"
#   	end	
#   end

#   def sides                       #display how many sides the die has
#   	p @die.length	
#   end

#   def roll
#   	p "#{@die.sample}"            #pick a string from the array at random
#   end

# end

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? 
# 	This die class uses strings rather than integers.
# Did you need to change much logic to get this to work?
# 	no, it's very similar, it just uses .sample rather than rand(range)
# What does this exercise teach you about making code that is easily changeable or modifiable? 
# 	labeling is very important as well as recognizing what data type you're working with because
# 	strings and integers perform differently. 
# What new methods did you learn when working on this challenge, if any?
# 	I learned .sample and raise ArgumentError.new for this
# What concepts about classes were you able to solidify in this challenge?
# 	It was good practice using instance variables and initializing a class. Basically setting up a class is like
# 	setting up a method but you must have Class_name.new(argument) at the bottom. 



