# Die Class 1: Numeric

# I worked on this challenge [y myself

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: number of sides on the die 
# Output: random number between 1 and number of sides, fewer than 1 sides should generate ArgumentError
# Steps: Create die class, generate random number in range of sides, 


# 1. Initial Solution

class Die
  def initialize(sides)
    @num_of_sides = sides
    if @num_of_sides < 1
    	raise ArgumentError.new ("Need 1 or more sides")
    end
  end


  def sides
    p @num_of_sides
  end

  def roll
    p rand(@num_of_sides) + 1
  end
end



# 3. Refactored Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if @sides < 1
#     	raise ArgumentError.new ("Need 1 or more sides")
#     end
#   end


#   def sides
#     @sides
#   end

#   def roll
#     rand(1..@sides)
#   end
# end


# 4. Reflection
# What is an ArgumentError and why would you use one?
#   You program an argument error to appear if someone types in something you know will
#   give them an undesired result in your program.

# What new Ruby methods did you implement? 
#   This was my first use of random, ArgumentError and Class but random is the only method of those.

# What challenges and successes did you have in implementing them? 
#  Luckily the reading prepared me for a successful go at this. I thought it was interesting that the 
#  random method returns values between 0 and 1 below the number you enter so was happy to implement
#  the range function instead.

# What is a Ruby class?
#   A Ruby class is like a super method made up of individual methods and variables.
#   It's named with a constant, which is capitalized. 
#   Because of it's size it's now important to distinguish between local, instance, 
#   class, and global variables because each has a different scope.

# Why would you use a Ruby class?
#   You can use and organize several method within a class so you can more specifically 
#   perform a desired function.

#  What is the difference between a local variable and an instance variable?
#   a local variable only exists within the method it's defined in and a instance
#   variable works across methods withing the same class and is designated with a @.

#  Where can an instance variable be used?
#    Instance variables will read in different methods if they're in the same class.  





