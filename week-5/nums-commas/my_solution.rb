# Numbers to Commas Solo Challenge

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? the input will be an integer that needs to be converted to a string to add the symbol ","

# What is the output? (i.e. What should the code return?) needs to produce a string with a comma every third place from the right, except on numbers under 1000.

# What are the steps needed to solve the problem? print back a number under 1000 because it doesn't need a comma, make sure the number is a string so a comma can be inserted, figure out what range the number falls into to know how many commas you need and where they go.


#  1. Initial Solution
# def separate_comma(num)
#     if num <= 999
#         num.to_s
#     elsif num <= 9999
#         x = num.to_s
#         x.insert(1, ",")
#     elsif num <= 99999
#         x = num.to_s
#         x.insert(2, ",")
#     elsif num <=999999
#         x = num.to_s
#         x.insert(3, ",")
#     elsif num <=9999999
#         x = num.to_s
#         y = x.insert(4, ",")
#         y.insert(1, ",")
#     elsif num <=99999999
#         x = num.to_s
#         y = x.insert(5, ",")
#         y.insert(2, ",")
#     elsif num <=999999999
#         x = num.to_s
#         y = x.insert(6, ",")
#         y.insert(3,",")
#     elsif num <= 9999999999
#         x = num.to_s
#         y = x.insert(7, ",")
#         z = y.insert(4, ",")
#         z.insert(1, ",")
#     end
# end



# # 2. Refactored Solution
# By reversing the number you can now count every third digit and insert a comma

# 1.
# def separate_comma(num)
#  reversed_input = num.to_s.reverse
#  three_mult = 3
#  while reversed_input.length > three_mult
#    reversed_input.insert(three_mult, ',')
#    three_mult += 4
#  end
# 



# # 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# -I knew first I could output arguments under 1000 si I needed to weed those out and then figure
# out a way to insert commas into the number string. I didn't find the reverse method until later
# so I created a bunch of ranges to determin the length of the number and place the commas accordingly.
# In hindsight I see that it is a superficial method that works more aesthetically than mathematically,
# but it worked!

# Was your pseudocode effective in helping you build a successful initial solution?
# -Yes, pseudocode is a great step in problem solving

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of 
# using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they 
# significantly change the way your code works? If so, how?
# -the reverse method made for a much simpler method that works on any number. From there I also found a 
# one line method that uses gsub and reverse but I couldn't get it to work. 

# How did you initially iterate through the data structure?
# -with if/elsif to sort which range of comma placement was necessary.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# - I feel the refactored is better but I like how my first try reads, 
# I enjoy the pattern and presentation of a long list of elsifs but recognize it would not
# be the best choice of the two 









