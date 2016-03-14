
# Your Names
# 1) Leland
# 2) Scott

# We spent [1] hour on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" => 5, "pie" => 7}
   
  if !library.key?(item_to_make)
  raise ArgumentError.new("We don't make #{item_to_make}")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  
  elsif remaining_ingredients >= 7
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, make yourself #{remaining_ingredients / 7} pie. "
  
   elsif remaining_ingredients >= 5
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, make yourself #{remaining_ingredients / 5} cake. "
  
  else
  return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, make yourself #{remaining_ingredients} cookies. "
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# Reflection
What did you learn about making code readable by working on this challenge?
The more linear you can make arguments the better otherwise you have to trace variables 
all over the place.

Did you learn any new methods? What did you learn about them?
I learned the key? argument to see if any keys in the hash match the argument.

What did you learn about accessing data in hashes? 
Nothing new but I got important practice in a new application.

What concepts were solidified when working through this challenge?
This challenge helped to solidify my knowledge of loops and hashes and was a good experience in pairing. 