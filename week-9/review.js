//Pseudocode

// define grocery list variable with items and quantity
// add an item and quantity
// remove an item
// update quantity
// print the list nicely. 



//Initial Solution

//define list
var groceryList = {
	milk: 1,
	eggs: 12, 
	iceCream: 2,
	kale: 2,
} 

//add item and quantity
groceryList["banana"] = 6
// console.log(groceryList)
// => { milk: 1, eggs: 12, iceCream: 2, kale: 2, banana: 6 }

//remove item
delete groceryList.kale
// console.log(groceryList)
// =>{ milk: 1, eggs: 12, iceCream: 2, banana: 6 }

//update quantity
groceryList.eggs = 18
// console.log(groceryList)
// =>{ milk: 1, eggs: 18, iceCream: 2, banana: 6 }

//print nicely
console.log(grocery)



//Refactor

// var groceryList = {
// 	milk: 1,
// 	eggs: 12, 
// 	iceCream: 2,
// 	kale: 2,
// } 

// groceryList["banana"] = 6

// delete groceryList.kale

// groceryList.eggs = 18

// console.log(grocery)




//Reflect
// What concepts did you solidify in working on this challenge? 
This was a good exercise in manipulating js object properties. 

// What was the most difficult part of this challenge?
Just a nice straight forward exercise

// Did you solve the problem in a new way this time?
Pretty much the same as in Ruby but I think this is easier, rather than making an update_item 
function I just type the path to the item and set it equal to the new quantity.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
Pseudo code was slightly different because it was simpler, pretty close though.
