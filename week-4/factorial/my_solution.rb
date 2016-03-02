# Factorial

# I worked on this challenge with: Alison Paul.
#
# define an integer
# if number == 0
#   return 1
# number * (number-1) 
#   i = (number-1)
#   n = (number * i)
# break n == 1
# return total
#
# Your Solution Below
def factorial(number)
   if number == 0 || number == 1
  	 return 1
   end

  i = (number-1)
  n = (number*i)
   while i > 1
  	 i = i-1
  	 n = n*i	
  end
  return n
end

factorial(5)

#refectored:
# 
# def fact(n)
#   if n==0 || n==1
#      1
# else
#   n * fact(n-1)
# end
# end
#
#