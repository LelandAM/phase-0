# Pad an Array

# I worked on this challenge [by myself, with: Kelson Adams]

# I spent [3] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, a minimum size for the output array, an optional argument of what the array should be padded with.

# What is the output? (i.e. What should the code return?) An array with the specified length, padded with listed optional padding.

# What are the steps needed to solve the problem?
# Find length of array
# if length of array is >= desired length p array
# else
# while length of array <= desired length add padding
# break when length of array >= desired length

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  
  if array.length >= min_size 
    p array
  else
    
    while array.length < min_size
      array = array.push(value)
    end 
    
    p array
  end
  
end


def pad(array, min_size, padding=nil) #non-destructive
  
  new_array = Array.new(array)
  if new_array.length >= min_size 
    p new_array
  else
    while new_array.length < min_size
      new_array = new_array.push(padding)
    end 
       
    p new_array 
  end
  
end

# 3. Refactored Solution
# def pad!(array, min_size, value = nil) #destructive
  
#   # If the array's size is less than the minimum size, return the original array
#   if array.length >= min_size 
#     p array
    
#   else
    
#     # Until the array's length is the minimum size, add on the value
#     while array.length < min_size
#       array = array.push(value)
#     end 
    
#     # Print and return the modified array
#     p array
#   end
  
# end


# def pad(array, min_size, padding=nil) #non-destructive
  
#   # Create separate array to leave inputted array untouched
#   new_array = Array.new(array)
  
#   # If the array's size is less than the minimum size, return the original array
#   if new_array.length >= min_size 
#     p new_array
    
#   else
    
#     # Until the array's length is the minimum size, add on the value
#     while new_array.length < min_size
#       new_array = new_array.push(padding)
#     end 
    
#     # Print and return the modified array
#     p new_array 
#   end
  
# end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
  # Yes, pseudo coding helped us break the problem down into do-able pieces

# Once you had written your pseudocode, were you able to easily translate it into code?
# What difficulties and successes did you have?
  # We had success in coming up with a code, testing it and making changes after viewing it in rspec but to do so took a looooong time.

# Was your initial solution successful at passing the tests? 
  # Our initial solution turned out to be a good destructive answer but we had to work extra to find a good non-destructive one.

 # If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# it took some work to figure out a good non-destructive method and we got some practice at the differences with p prints and puts.
# We made the method print out our variables at different stages to see where the destruction was happening and found when we assigned 
# a variable at the beginning it worked best. 

# # When you refactored, did you find any existing methods in Ruby to clean up your code?
# yes, we found a couple but didn't have success implementing them and then realized the goal of 
# refactoring was to make the code more user friendly and not just faster.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think it's very readable, we made a point of using descriptive variables.

# What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods rewrite the original data and can be signified with a bang (!).
# Non-D methods use but don't reweite the original data, a great way to do this is by assigning variables right away.
















