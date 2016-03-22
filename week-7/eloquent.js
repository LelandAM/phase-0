// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

thirteen = 13;
console.log(thirteen + 2)

// Favorite Food

prompt("What's your favorite food?")

alert("Hey! That's my favorite too!")

// Complete one of the exercises: FizzBuzz

for (var number = 1; number <= 100; number ++)
{
  if (number % 3 == 0 && number % 5 == 0)
    console.log("FizzBuzz");
  else if(number % 3 == 0)
    console.log("Fizz");
  else if(number % 5 == 0)
    console.log("Buzz");
  else
    console.log(number);
}

// Functions
// Complete the `minimum` exercise.
function min(x, y) {
  if x < y
    console.log(x);
  else
    console.log(y);
}

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Leland",
  age: 29,
  favFoods: ["Italian Beef", "Pizza", "Chili"],
  quirk: "I collect everything!"
}



