#4.2 Numbers Questions

## What does puts do? 
puts stands for "put string" and in ruby it outputs to the console without returning any information.

## What is an integer? What is a float?
In programming language an integer is a whole number and a float (or floating-point number) is a number with decimal points. 

## What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
In float division even whole numbers are entered with a decimal value (1.0, 40.0, -23.0) and your answers are returned with decimal values (2.0, 3.33, -23.75), this is as you might expect. Buuuuuut with integer division the computer will round down to the nearest whole number and return that value to you, no decimal places. 

## Hours in a Year
```ruby
puts 365 * 24
```
## Minutes in a Decade
```ruby
puts 10 * 365 * 24 * 60
```

## How does Ruby handle addition, subtraction, multiplication, and division of numbers? It views all input as a strings so you need to convert the string to integer or floats with .to_i or .to_f then you can use + - * /. IF you divide an integer it won't give you a remainder, it will round down to the closest whole number so you need to convert to a floats if you expect decimals. 
## What is the difference between integers and floats? Integers are whole numbers and floats have decimal values. 
## What is the difference between integer and float division? integers are rounded down and floats are allowed a remainder shown as a decimal
## What are strings? Why and when would you use them? strings are groups of character symbols, is a number is read as a string rather than an integer is will have a text value but not a numerical value.
## What are local variables? Why and when would you use them? local variables are defined in the method or program being written and do not exist outside of it.
## How was this challenge? Did you get a good review of some of the basics? I enjoyed these ruby challenges, it's fun to learn.
