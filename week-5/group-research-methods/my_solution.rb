# Research Methods

# I spent [] hours on this challenge.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# 
# # Person 1's solution (Patrick DeWitte)
# # Input: Array
# # Output: New array of words from initial array that conatain a letter
# # Steps:
# # -Initialize new array // Didn't actually need to do this, as select inherently returns new array
# # -Iterate over initial array argument to find letter
# # -Store results in new array
# # -Return new array // Inherent in enumerator method

# def my_array_finding_method(source, thing_to_find)
#   found_array = source.select {|word| word.to_s.include?(thing_to_find)}
#   p found_array
# end

# # Input: Hash of pets and their ages
# # Output: New array that includes pets of a ceratain age
# # Steps:
# # -Initialize new array << Turned out to be unnecessary, as .select returns a new hash (more below)
# # -Iterate over hash to find_all pets of specific age
# # -Transfer pet names(keys) to new array

# def my_hash_finding_method(source, thing_to_find)

#   pet_hash = source.select{|pet, age| age == thing_to_find}
#   pet_array = pet_hash.keys

# p pet_array

# end

# # Identify and describe the Ruby method(s) you implemented.
# .select (similar to .find_all) iterates over the array/hash, and allows you to operate on its output
 # with a subsequent code block. In this case, we used .select to find all the words in an array (source)
 #  that included a certain letter (thing_to_find). These methods inherently return a new array. In the block,
 #   we selected only the words that included (thing_to_find) to be returned to the new array which is 
 #   inherently created by .select.

# Also used was the .key (.keys) method. When passed to a hash, it returns the key of a specified value.
# In this case, source.select inherently created a new hash (since .select was passed to a hash, not an array). 
#   What we needed was an array, so we called .keys on pet_hash, and it returned the keys of pet_hash in a new 
#   array that we called pet_array.

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# Person 3

# Pseudo Code-
# Alphabetize: 
# input: array of pets and their ages (i_want_pets)
# method: assign a variable so its non destructive, convert to string, have sort iterate through the array
# output: the alphabetized array
# my_array_sorting_method(i_want_pets)
#=> [2, 3, "I", "but", "have", "only", "pets", "want"]

# Sort by Age:
# input: hash of pets and their ages
# method: assign a variable so its non destructive, have it iterate through keys and values because it's a hash but sort by value.
# output: pets sorted by age with youngest first, non-destructive
# my_hash_sorting_method(my_family_pets_ages)
#=> [["Annabelle", 0], ["Ditto", 2], ["Hoobie", 3], ["Bogart", 4], ["Poly", 5], ["Evi", 6], ["George", 12]]

#######ALPHABETIZE#############
def my_array_sorting_method(source)
  sorted_array = source.sort_by { |a| a.to_s} 
end
   
# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]   
# my_array_sorting_method(i_want_pets)

########SORT-BY-AGE#############
def my_hash_sorting_method(source)
   age_hash = source.sort_by {|k, v| v}
end

# my_family_pets_ages = {"Evi" => 6, "Ditto" => 2, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 5, "Annabelle" => 0}
#  my_hash_sorting_method(my_family_pets_ages)

#######Release 2
# Identify and describe the Ruby method(s) you implemented.
# The key to this challenge was the .sort_by method which iterates through
 # the array and rearranges alphabetically and by value (or whatever you tell
 #  it to), because there are both integers and strings this it didn't want to
 #   work initially so I added .to_s to using sort_by with has you want to iterate
 #    through keys and values and tell it to sort by value which in this instance is
 #     the ages of these dogs.





# Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
# def my_array_splitting_method(source)
#      numbers, not_numbers = source.partition { |num| num.is_a?(Fixnum) }
# end

# def my_hash_splitting_method(source, age)
#      pets_4_years_or_under, others = source.partition { |pets_name, num| num <= age }
# end

# Identify and describe the Ruby method(s) you implemented.
# The method I used is the partition method which takes an object or block and 
# breaks it down into 2 arrays. The first array contains elements that evaluates 
# to true while the second array contains the rest.

# Release 1: Identify and describe the Ruby method you implemented. Teach your accountability group 
# how to use the methods. The method I used is the partition method. First you first create 2 variables 
# which will be the 2 arrays we separate the source into later. Then you set the 2 variables equal to the 
# array or hash parameter. In our above example, the parameter is named "source", next we call the method 
# (source.partition). Then we create a variable (or 2 variables for hashes) which points to each element 
# we pass to the partition method and lastly we set the condition we want to evaluate as true. The method 
# will evaluate each element and if it's true, sends it to the first array and if it's not true, sends it 
# to the second array.

# Release 3: Reflect! What did you learn about researching and explaining your research to others?
# I googled for "ruby separate array into two arrays two conditions", basically describing
# what I'm trying to achieve. The first link showed me the partition method and then I went 
# to Ruby Docs to read if the method does what I want and it does!


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#