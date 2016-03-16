# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [6] hours on this challenge.


# Release 0: Pseudocode
# Outline: 
# No input, call method to start new game
# When called program generates letter B, I, N, G, or O and number 1 - 100
# cancat letter with number and print result to call number
# with B-O representing index 0-4 in each array check if letter/number combo exists
# if no print no match
# if yes, replace with x  
# print "pretty" nested arrays 1 per line, like bingo card



# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  
  #define possible letters
  #choose letter at random
  #choose number 1-100
  #combine both and call
  

# Check the called column for the number called.
  
  #for each letter: 
  #if letter == "B" check for Number in subarray index [0]
  

# If the number is in the column, replace with an 'x'
  # when above condition is met: subarray[0] = 'x'
  #else p "No Match"

# Display a column to the console
  # puts "no match" for each index it checks down the column

# Display the board to the console (prettily)
  # puts BINGO so letters line up with columns below
  # each inner array displayed on its own line

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def draw
#     letter_array = ['B', 'I', 'N', 'G', 'O']   #define possible letters
#     @bingo_index = rand(0..4)                  #choose an index at random
#     @letter = letter_array.[@bingo_index]       #assign index to letter
#     @number = rand(1..100)                      #choose number 1-100
#     p "#{@letter}#{@number}"                     #combine both and call
#   end 

#   def check       
#     if @letter == "B"                          #check for specific letter/column
#       for subarray in @bingo_board              #check in the supplied bingo board
#         if subarray[0] == @number              #check for the number in right index
#           subarray[0] = "X"                     #if the number is there change it to an x
#           puts "You got one!"                   # and display a heads up
#         else
#           puts "No Match in B!"                 #or let you know it's not there
#         end
#     end 

#     elsif @letter == "I"
#       for subarray in @bingo_board
#         if subarray[1] == @number
#           subarray[1] = "X"
#           puts "You got one!"
#         else
#           puts "No Match in I!"  
#         end
#     end 

#     elsif @letter == "N"
#       for subarray in @bingo_board
#         if subarray[2] == @number
#           subarray[2] = "X"
#           puts "You got one!"
#         else
#          puts "No Match in N!"  
#         end
#     end 

#     elsif @letter == "G"
#       for subarray in @bingo_board
#         if subarray[3] == @number
#           subarray[3] = "X"
#           puts "You got one!"
#         else
#          puts "No Match in G!"  
#         end
#     end 

#     elsif @letter == "O"
#       for subarray in @bingo_board
#         if subarray[4] == @number
#           subarray[4] = "X"
#           puts "You got one!"
#         else
#           puts "No Match in O!"  
#         end
#     end 

#   end 

#   def display
#     puts "B  I  N  G  O "                                 #print BINGO with space so it lines up with columns
#     @bingo_board.each {|inner| puts inner.join(" ")}      #join each inner array with a space between each number
#   end  

# end
# end


# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def draw
    letter_array = ['B', 'I', 'N', 'G', 'O']            
    @letter = letter_array.sample               
    @number = rand(1..100)                      
    p "#{@letter}#{@number}"                     
  end 

  def check
    for subarray in @bingo_board
      subarray.map! {|num, index| @number == num && @letter == index ? num = "X" : num}
  end
  
          
  def display
    puts "B  I  N  G  O "                                
    @bingo_board.each {|inner| puts inner.join(" ")}  
  end  

end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.draw
new_game.check
new_game.display





#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#   Pseudocoding was helpful and not that difficult but putting the pseudocode into functional
#   code and debugging it was challenging.
# What are the benefits of using a class for this challenge?
#   Using a class is beneficial because it allows for instance variables that can be used with
#   the several methods necessary to run the program.
# How can you access coordinates in a nested array?
#   To access coordinated in a nested array you can use one more level of indexing to call them
#   or use more specific language like subarray and inner to access nested arrays.
# What methods did you use to access and modify the array?
#   initially I used subarray[i] and if/else to access and modify nested arrays and in refactoring I 
#   used each do then cleaned it up to one line with {}
# Give an example of a new method you learned while reviewing the Ruby docs. 
# Based on what you see in the docs, what purpose does it serve, and how is it called?
#   .sample came in handy when looking for a random alternative that worked with strings. 
# How did you determine what should be an instance variable versus a local variable?
#   Instance variables were the things that needed to be used all through the process, the bingo number 
#   and letter and the board. Local variables like num and index were only necessary for calculating within
#   one of the methods.
# What do you feel is most improved in your refactored solution?
#   My refactored solution is much shorter and efficiency is very important for readability and debugging. 





