# Cipher Challenge

# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # this takes the coded message input argument, makes everything downcase, splits it all into separate characters and sets that equal to the variable 'input'
#   decoded_sentence = []   # creates an empty array called decoded sentence that will be filled with deciphered code.
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # hashes are great because they have key/value pairs which seem liek a natural choice for this sort of thing, but we can probably make it cleaner with arrays.
#             "g" => "c",   # maybe we can make one alphabet array and locate each coded letter and tell it to print out a letter 4 over to decoded_sentence array
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # this iterates over each letter in the newly split and downcased input variable.
#     found_match = false  # this is a method of flow control, when it's true the letters have already been swapped and it should break
#     cipher.each_key do |y| # this is iterating over each key value in cipher (y) until it hits a match, send it on, and starts at e again.  
#       if x == y  # this compares the letters from input to the keys in the cipher hash? when they match it sends the value of the key to the empty cipher array to create a decoded message.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # It is important to break here so it doesn't try to keep deciphering the message and shift everything 4 more letters over, making it unreadable again.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #These characters are all code for a space so when it encountered them it replaces them with " "
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # creates an array with 10 values, 0 through 9. If there it a number, it will print the number as is to the decoded sentence. 
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #This is joining the separated letters and spaces back together to make it into words. 
# end

# # Your Refactored Solution
# This refectored solution takes care of everything but the integers which come out blank
def dr_evils_cipher(coded_message)
  alphabet  = Array('a'..'z') #sets alphabet w/o having to waste space typing it out
  decrypter = Hash[alphabet.zip(alphabet.rotate(-4))] #to solve this we make a hash where we rotate each letter 4 spaces over through the alphabet, this is better than shift because it loops a and z.
  solved = coded_message.chars.map { |x| decrypter.fetch(x, " ")} #run the decrypter on coded_message and put the results in a quotes with spaces
  solved.join("")
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# What concepts did you review or learn in this challenge?
# Rotate was new to me and came in very handy, it creates a loop you define and roatates one value in for another x spaces away.
#This was an exercise in iteration, working with hashes and arrays and research. Fetch Characters map was also very useful 
# What is still confusing to you about Ruby?
# some variables like x and y just seem to appear and ruby automatically recognizes what they should apply to and I don't
# What are you going to study to get more prepared for Phase 1?
# just more of these ruby challenges I suppose.

# Keep your reflection limited to 10-15 minutes!
Status API Training Shop Blog About
