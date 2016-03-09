# Release 1: Pseudo Code

# input: array of names

# randomize names -optional, but would be nice
# count strings in array, assign variable
# if divisible by 5 with a remainder greater than or equal to 3
# 	divide into groups of 5
# if divisible by 4 with a ramainder greater than or equal to 3
# 	divide into groups of 4 	
# else divide into groups of 3


# output: a meta array of names grouped into clusters of 4 or 5 with no fewer than 3 in a group.

# MVP: divides list provided into groups in order names are provided. 


# Release 2: Initial Solution

def group_maker(name_array)
	names = name_array #non-destructive
	names.sort_by {rand} #randomize so abby, alex, and ashley don't always get stuck together
	group_size = names.count #how many names do we have to split?
	if group_size % 5 == 0 || group_size % 5 >= 3 #can you split the names into groups of 5 with a remaining group of 3 or more?
		names.each_slice(5) {|slice| p slice}  #if so, split the list into groups of 5, print each on its own line
	elsif group_size % 4 == 0 || group_size % 4 >= 3 #can you split the names into groups of 4 with a remaining group of 3 or more?	
		names.each_slice(4) {|slice| p slice}  #if so, split the list into groups of 4, print each on its own line
	else group_size % 4 == 0 || group_size % 4 >= 3	#if you can't split them into nice groups of 3-5 at least split them into groups of four 
		names.each_slice(4) {|slice| p slice}
		   p "split up this last group and assign them to others"  #with a message to divide the remainders up into other groups.
		  
	end
end

group_maker(["tom", "james", "bobby", "ryan", "kevin", "ray", "jay", "faye", "karry", "tarry", "tom", "james", "bobby", "ryan", "kevin", "ray", "jay", "faye"])



# Release 3: Add Complexity

		#   if names[-1].count < 3
		#     names.push[-1]
		#   end
		#             #i tried to use this to assign remainders into last group but couldn't get it
		
# Release 4: Refactor



# Release 6: Reflect

# What was the most interesting and most difficult part of this challenge?
# I like working through it as a logic puzzle but it's frustrating not knowing
#  the capabilities of ruby so I have to look up and read about most actions rather
#  than just having the vocab to add the last array to the one before it. 

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
#  Yes pseudo coding is helping me break it into parts but I need practice still to figure out
#  what ruby things to translate my pseudocode to.

# Was your approach for automating this task a good solution? What could have made it even better?
# I think my approach worked great, I think randomizing the names first is a nice touch. 

# What data structure did you decide to store the accountability groups in and why?
# I stored them in a meta array because we use integer names for accountability groups

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?	

