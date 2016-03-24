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

var player = {
  HP: 10,
  position: 4,
  score: 0,
  tackle: false
}

var theDonald = {
  HP: 30,
  position: 2
}

var nameOne = throw(){
  theDonald.position = Math.floor(Math.random() * 5) + 1
  tomato.position = Math.floor(Math.random() * 5) + 1
};

  if( theDonald.position === player.position){
    console.log("Direct Hit! 1000 Points!")
    theDonald.HP -= 10
    player.score += 1000
  }
  else{
    console.log("You missed! Look out!")
  }

var nameTwo = tackle(){

};





// Refactored Code






// Reflection
//
//
//
//
//
//
//
//