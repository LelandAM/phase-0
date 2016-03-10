# Calculate the mode Pairing Challenge

# I worked on this challenge with: David Walden

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# input: an array of numbers or strings

# method: rfdidentify unique elements
# count number of occurences of each unique element
# print element(s) with greatest number of occurances

# output: an assorted array of the most frequent values in the argument array


# 1. Initial Solution

def mode(array)

unique_array = array.uniq
count_array=[]
i = 0
  while i < unique_array.length
    count_array[i] = array.count(unique_array[i])
    i += 1
  end
  
count_hash = Hash[unique_array.zip count_array]

output_hash = Hash[count_hash.select { |key,value| value == count_array.max}]

p output_hash.keys

end


# mode([1,2,3,3])         # => [3]
# mode([4.5, 0, 0])       # => [0]
# mode([1.5, -1, 1, 1.5]) # => [1.5]
# mode([1,1,2,2])         # => [1,2]
# mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
# mode(["who", "what", "where", "who"]) # => ["who"]


# 3. Refactored Solution

# def mode(array)

#   count_hash = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }

#   max_occurence = count_hash.values.max

#   output_hash = Hash[count_hash.select { |key,value| value == max_occurence}]
#   p output_hash.keys

# end


# mode([1,2,3,3])         # => [3]
# mode([4.5, 0, 0])       # => [0]
# mode([1.5, -1, 1, 1.5]) # => [1.5]
# mode([1,1,2,2])         # => [1,2]
# mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
# mode(["who", "what", "where", "who"]) # => ["who"]



# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
#  We decided a hash would be best because we can use the key value pairs to signify onject and occurances.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
#   no, this was very difficult to pseudo code because it seemed like a simple operation at first. 

# What issues/successes did you run into when translating your pseudocode to code?
#   we had trouble turning our data into hash values and getting them to play nice.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring?
# In our first attempt we used While and later changed it to || because it is less messy

# Were they difficult to implement?
# yes, but with time we found a way. 







