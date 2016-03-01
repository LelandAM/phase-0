# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error? errors.rb
#
# 2. What is the line number where the error occurs? 8
#
# 3. What is the type of error message? syntax
#
# 4. What additional information does the interpreter provide about this type of error? it points to it in the line and says it's a problem with end-of-input
#
# 5. Where is the error in the code? ^ points to the space between the = and cartmans_phrase
#
# 6. Why did the interpreter give you this error? the variable cartmans_phrase should come before the parts that define it.
#

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs? 35
# 
# 2. What is the type of error message? undefined variable or method
#
# 3. What additional information does the interpreter provide about this type of error? it displays the problem area, which in this case is the undefined variable "south_park"
#
# 4. Where is the error in the code? the error is that it isn't code, it is just an undefined variable
#
# 5. Why did the interpreter give you this error? it wants us to define south_park as a variable with = and a string or integer
#

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs? 
#        50
# 2. What is the type of error message? 
#        Undefined Method
# 3. What additional information does the interpreter provide about this type of error? 
#         type of error, line the error occurs on, and where in the line
# 4. Where is the error in the code? 
#         the main object isn't defined as a method
# 5. Why did the interpreter give you this error?  
#         It errors because it's an incomplete method, it needs def and end

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#         65
# 2. What is the type of error message?
#         Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#         it wasn't expecting an argument
# 4. Where is the error in the code?
#         it wasn't expecting input
# 5. Why did the interpreter give you this error?
#         you need add parenthesis and define that input so it expects it and knows what to do with it.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#     84
# 2. What is the type of error message?
#     Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#     It says it was expecting an argument and didn't get one
# 4. Where is the error in the code?
#     There needs to be input for "offensive_message"
# 5. Why did the interpreter give you this error?
#     It was expecting offensive_message input and didn't get it



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#     105
# 2. What is the type of error message?
#     Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#     It was expecting two arguments and got 1
# 4. Where is the error in the code?
#     in the parenthesis, you either need to delete the name argument in the method or add a name when you run the method
# 5. Why did the interpreter give you this error?
#     It wants a name entered along with a lie.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#      124
# 2. What is the type of error message?
#      Type Error
# 3. What additional information does the interpreter provide about this type of error?
#      It says a number can't be multiplied by a string
# 4. Where is the error in the code?
#      The string and integer need to switch places
# 5. Why did the interpreter give you this error?
#       because you cannot multiply the integer 5 by "Respect my authority" but you can multiply "Respect my Authority" by 5

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#      139
# 2. What is the type of error message?
#      Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
#      it says it was told to divide something by zero which is impossible
# 4. Where is the error in the code?
#      the algorhythm is impossible
# 5. Why did the interpreter give you this error?
#      because nothing can be divided by zero

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#     155
# 2. What is the type of error message?
#     Load Error
# 3. What additional information does the interpreter provide about this type of error?
#     it says its can't load the file it's being asked to
# 4. Where is the error in the code?
#     it could be mis-spelled, it might not exist, or it might be in a different directory
# 5. Why did the interpreter give you this error?
#     it can't find the file cartmans_essay.md


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
# They were all easily identified with rspec. 

# How did you figure out what the issue with the error was?
# rspec lists what the error is and where it is, with my basic knowledge of methods it was easy to see what was missing.

# Were you able to determine why each error message happened based on the code? 
# Yes

# When you encounter errors in your future code, what process will you follow to help you debug?
# I'll use rspec to identify errors, clean formatting so problems are easier to identify, and if I can't figure it out I'll use a fresh pair of eyes from a friend or message board. 


















