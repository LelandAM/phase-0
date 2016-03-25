 // Design Basic Game Solo Challenge

// This is a solo challenge
// Your mission description: Your job is to throw a rotten tomato at Donald Trump. He's real worked up and pacing all over the stage so his position is random but you've got a pretty good arm on you. The crowd is also worked up so you're going to throw as many tomatos as you can before you get tackled.

// Overall mission: Running the program will generate a random position for the Trump, and a random position for your tomato, if they are equal you score a hit. After each throw it will determine if you've been tackled.

// Goals: Get a random number

// Characters: Donald Trump, You
// Objects: Tomato, Hateful Orange Face
// Functions: Donald's position (random number 1-5 to show position left to right on stage)
// Tomato Position (random number 1-5 to show where your tomato is headed)
// Donald's Classy Quotient (counts back from 30, -10 HP for each tomato landed)
// Player HP (there's a 50:50 chance you'll get tackled or worse after each throw, be careful!)

// Pseudocode:define the Donald with a position of 2 (out of 5 possible) and an HP of 30.
// Define the player with an HP of 10 and a tomato Position of 4 (out of five).
//
//
//
//
//
//
//

// Initial Code


// var myThrow = 2
// var MyThrow = prompt("Where are you throwing? (1-6)")

var theDonald = {
  HP: 30,
  position: 2,
  crowd: 2,

  toss: function(myThrow) {
    theDonald.position = Math.floor(Math.random() * 5) + 1;
    console.log("He's in position " + theDonald.position + "!"),

  tackle = function() {  
      
      if((Math.floor(Math.random() * 5) + 1) % 2 === 0) {
        console.log("You've been tackled, game over!");
      }
      else{
        console.log("keep throwing!")
        theDonald.toss(myThrow)
      } 
    }
  
    if(theDonald.position === myThrow) {
      console.log("Direct Hit! 1,000,000 Points!");
      theDonald.HP -= 10;
      console.log("Trump HP:" + theDonald.HP)

        if(theDonald.HP === 0){
          console.log("Three In A Row! You Win!")
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
}

var myThrow = 2

theDonald.toss(myThrow.position)



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






// Reflection
//
//