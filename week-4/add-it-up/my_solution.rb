# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with:Alison Paul].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array
# Output: sum of the array
# Steps to solve the problem.
# use each to split the array and add each number

# 1. total initial solution
 def total(array)
 	sum = 0
 	array.each do |num|
    sum += num
    end	
    return sum
 end
# 3. total refactored solution

# def total (array)
#    array.inject(:+)
# end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: a sentence, first letter capitalized with a period on the end.
# Steps to solve the problem.
# combine the arrays, capitalize first letter, add period on the end.
#
# 5. sentence_maker initial solution
 def sentence_maker(array)
    x=array.join(" ")
    return x.capitalize + "."
 end

# 6. sentence_maker refactored solution
#  looks like concatenate can help this as well
