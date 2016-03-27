 // Design Basic Game Solo Challenge

// This is a solo challenge
// Your mission description: Your job is to throw a rotten tomato at Donald Trump. 
// He's real worked up and pacing all over the stage so his position is random but you've 
// got a pretty good arm on you and 10 nasty tomatos. The crowd is also worked up so you're
// going to throw as many tomatos as you can before you get tackled.

// Overall mission: Running the program will generate a random position for Trump, and compare
// it to the position of your tomato, if they are equal you score a hit and Trump will loose 10 HP.
// After each throw you loose one tomato and there is a 50:50 change you'll be tackled  and loose.

// Goals: Get a random number

// Characters: Donald Trump, You
// Objects: Tomato, Hateful Orange Face
// Functions: Donald's position (random number 1-5 to show position left to right on stage)
// Tomato Position (entered as myThrow value 1-5)
// Donald's Classy Quotient (counts back from 30, -10 HP for each tomato landed)
// Player HP (there's a 50:50 chance you'll get tackled or worse after each throw, be careful!)

// Pseudocode:define the Donald with a position of 2 (out of 5 possible) and an HP of 30.
// Define the player with 10 tomatos and a myThrow position.


// Initial Code


// var myThrow = 2
// var MyThrow = prompt("Where are you throwing? (1-6)")

// var theDonald = {
//   HP: 30,
//   position: 2,
//   crowd: 2,

//   toss: function(myThrow) {
//     theDonald.position = Math.floor(Math.random() * 5) + 1;
//     console.log(theDonald.position),

//   tackle = function() {  
      
//       if((Math.floor(Math.random() * 5) + 1) % 2 === 0) {
//         console.log("You've been tackled, game over!");
//       }
//       else{
//         console.log("keep throwing!")
//         theDonald.toss(myThrow)
//       } 
//     }
  
//     if(theDonald.position === myThrow) {
//       console.log("Direct Hit!");
//       theDonald.HP -= 10;
//       console.log("Trump HP:" + theDonald.HP)

//         if(theDonald.HP === 0){
//           console.log("You Win!")
//         }
//         else{
//           theDonald.toss(myThrow)
//         }     
//     }

//     else{
//       console.log("You missed! Look out!");
//       tackle()
//     } 
//   }
// }

// var myThrow = 2

// theDonald.toss(myThrow.position)



// BASH DEMO
// week-7 [wednesday] :> node game.js
// He's in position 5!
// You missed! Look out!
// keep throwing!
// He's in position 3!
// You missed! Look out!
// keep throwing!
// He's in position 1!
// You missed! Look out!
// keep throwing!
// He's in position 2!
// Direct Hit! 1,000,000 Points!
// Trump HP:20
// He's in position 2!
// Direct Hit! 1,000,000 Points!
// Trump HP:10
// He's in position 2!
// Direct Hit! 1,000,000 Points!
// Trump HP:0
// Three In A Row! You Win!






// Refactored Code
//define the object, with values which are placeholders as they will be 
//changed in the game.

var player = {
tomatoCount: 10,
};

var theDonald = {
  HP: 30,
  position: 2,
  crowd: 2,

  toss: function(myThrow) {
    theDonald.position = Math.floor(Math.random() * 4) + 1;
    console.log("He's in position " + theDonald.position + "!");
    player.tomatoCount -= 1

  tackle = function() {  
      if((Math.floor(Math.random() * 5) + 1) % 2 === 0) {
        console.log("You've been tackled, game over!");
      }
      else{
        player.tomatoCount -= 1;
        console.log(player.tomatoCount + " tomatos left. Keep throwing!")
        theDonald.toss(myThrow)
      } 
    }

    if(theDonald.position === myThrow) {
      console.log("Direct Hit! 1,000,000 Points!");
      theDonald.HP -= 10;
      console.log("Trump HP:" + theDonald.HP + "     " + player.tomatoCount + " tomatos left");

        if(theDonald.HP === 0){
          console.log("Three In A Row! You Win!")
        }
        else if(player.tomatoCount ===0){
          console.log("You're out of Tomatos, run!")
        }
        else{
          theDonald.toss(myThrow)
        }     
    }
  
    else{
      console.log("You missed! Look out!");
      tackle()
    } 
  }
};

var myThrow = 2

theDonald.toss(myThrow)

// $$$$$$$$$REFACTORED DEMO$$$$$$$

// week-7 [wednesday] :> node game.js
// He's in position 2!
// Direct Hit! 1,000,000 Points!
// Trump HP:20     9 tomatos left
// He's in position 1!
// You missed! Look out!
// 7 tomatos left. Keep throwing!
// He's in position 1!
// You missed! Look out!
// 5 tomatos left. Keep throwing!
// He's in position 3!
// You missed! Look out!
// 3 tomatos left. Keep throwing!
// He's in position 2!
// Direct Hit! 1,000,000 Points!
// Trump HP:10     2 tomatos left
// He's in position 2!
// Direct Hit! 1,000,000 Points!
// Trump HP:0     1 tomatos left
// Three In A Row! You Win!


// Reflection
//What was the most difficult part of this challenge?
// The most difficult part was actually figuring out what kind of game to make.
// The next most difficult was figuring the order to next all my functions and
// variables so they could be recognized. 

// What did you learn about creating objects and functions that interact with one another?
// I learned that JS works in the order is reads through the code so if it encounters something
// that hasn't been defined yet it doesn't know what to do. 

// Did you learn about any new built-in methods you could use in your refactored solution? 
// No, I ended up using the same standards. 
// If so, what were they and how do they work? N/A
// How can you access and manipulate properties of objects?
// You can access the property with the objectName.property then access or change it's value. 
//