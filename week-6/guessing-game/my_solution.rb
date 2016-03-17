# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer that is a guess at the correct answer
# Output: put whether the guess is too high, too low or correct
# Steps:


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#   	@answer = answer
#   end

#   def guess(num)
#   	@num = num
#   	if @num == @answer
#   		p :correct
#   	elsif @num > @answer
#   		p :high
#   	elsif @num < @answer
#   		p :low
#   	end
#   end	

#   def solved?
#   	if @num == @answer
#   		p true
#   	else
#   		p false	
#   	end
#   end

# end

# answer=10
# num= rand(1..20)


# game = GuessingGame.new(answer)
# game.guess(num)
# game.solved?

# Refactored Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

  def guess(num)
  	@num = num
	if @num == @answer
  		p :correct
  	elsif @num > @answer
  		p :high
  	elsif @num < @answer
  		p :low
  	end
  end	

  def solved?
  	p ( @num == @answer ? true : false )   #Optimized Boolean ternary operator
  end

end

answer = 10
num = rand(1..20)


game = GuessingGame.new(answer)
game.guess(num)
game.solved?


# Reflection

How do instance variables and methods represent the characteristics and 
behaviors (actions) of a real-world object?

When should you use instance variables? What do they do for you?

Explain how to use flow control. Did you have any trouble using it in this challenge?
	Flow control is programming using if/else statements to chanel arguments to trigger different
	formulas or results. By checking if your argument meets certain criteria you can signal back to
	the user or make sure it it the right type of argument for whatever your method has to do. I had
	no trouble with flow control today I like to experiment with it. 

Why do you think this code requires you to return symbols?
	The instructions said we were using symbols partly due to the way strings and symbols are stored in 
	memory so it has something to do with using class, instance variables, and the solved portion but 
	I wrote my code so that they could have easily been strings instead.

What are the benefits of using symbols?
	Strings are immutable and unique so they cannot be changed and are easily recognized.



