# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? the input will be an integer that needs to be converted to a string to add the symbol ","

# What is the output? (i.e. What should the code return?) needs to produce a string with a comma every third place from the right, except on numbers under 1000.

# What are the steps needed to solve the problem? print back a number under 1000 because it doesn't need a comma, make sure the number is a string so a comma can be inserted, figure out what range the number falls into to know how many commas you need and where they go.


# 1. Initial Solution
def separate_comma(num)
    if num <= 999
        num.to_s
    elsif num <= 9999
        x = num.to_s
        x.insert(1, ",")
    elsif num <= 99999
        x = num.to_s
        x.insert(2, ",")
    elsif num <=999999
        x = num.to_s
        x.insert(3, ",")
    elsif num <=9999999
        x = num.to_s
        y = x.insert(4, ",")
        y.insert(1, ",")
    elsif num <=99999999
        x = num.to_s
        y = x.insert(5, ",")
        y.insert(2, ",")
    elsif num <=999999999
        x = num.to_s
        y = x.insert(6, ",")
        y.insert(3,",")
    elsif num <= 9999999999
        x = num.to_s
        y = x.insert(7, ",")
        z = y.insert(4, ",")
        z.insert(1, ",")
    end
end



# 2. Refactored Solution

number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse



# 3. Reflection