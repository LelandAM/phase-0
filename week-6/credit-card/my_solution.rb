# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Kelson Adams.
# I spent [2.5] hours on this challenge.

# Pseudocode

# Input: CC number as integer
# Output: Boolean
# Steps: check for 16 digits, raise ArgumentError
	# convert the number to array
	# split the array so each digit has an index
	# Double every other number (even index only)
	# -while - count variable = 0 , while count < 15, count +=2, num.map *2
	# iterate back through numbers and break all two digit numbers into two single digit integers
	# -if num has > 1 digit add both digits together. 
	# sum all values of the array
	# if sum is divisible by 10, card is Validate


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

	def initialize(cc)
		@cc = cc.to_s.split("").map! {|num| num.to_i}
		unless @cc.length == 16	
			raise ArgumentError.new "Invalid Credit Card Number"
		end		
	end	

	def check_card
		count = 0
		while count < 15 
			@cc[count] *= 2
			count += 2
		end	
		
		sum = 0
		@cc.each do |num| 
			if Math.log10(num) >= 1.0
				num.to_s.split("").map! {|value| sum += value.to_i}
			else 
				sum += num	
			end
		end
		sum % 10 == 0 ? true : false	
	end

end



my_credit = CreditCard.new(4563960122001999)


# Refactored Solution
class CreditCard

	def initialize(cc) #split cc number into 16 strings, make sure it has 16 digits
		@cc = cc.to_s.split("").map! {|num| num.to_i}
		unless @cc.length == 16	
			raise ArgumentError.new "Invalid Credit Card Number"
		end		
	end	

	def check_card 
		#multiply 2 to every other variable in the array
		count = 0
		while count < 15 
			@cc[count] *= 2
			count += 2
		end	
		
		sum = 0 #sets sum to 0, finds if integer is 1 or two digits, if two digits then add each individually to sum
		@cc.each do |num| 
			if Math.log10(num) >= 1.0
				num.to_s.split("").map! {|value| sum += value.to_i}
			else #if one digit then add number to sum
				sum += num	
			end
		end
		sum % 10 == 0 ? true : false #Ternary statement, used to be if/else	
	end

end


# # Reflection
# What was the most difficult part of this challenge for you and your pair?
# This exercise took a lot of time but was was not especially difficult, we worked through and tested
# lots of options and ideas until we found ones that worked and then refined them. Our refactored
# solution is more of a readable breakdown than a redone solution because we did a lot of refactoring
# in our actual solving process.

# What new methods did you find to help you when you refactored?
# We found Math.log10 to be incredibly helpful at determining if we had a 1 or 2 digit number.
# We also learned about Ternary Statements to shorten if/else paragraphs

# What concepts or learnings were you able to solidify in this challenge?
# I was able to solidify going between do and {} for iteration as well as placing various p 
# commands in the code along the way to check if if things were being processed the right way. 
	


