/*
Gradebook from Names and Scores
I worked on this challenge with: Dominick Lombardo
This challenge took me [2] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.
//release 1

var gradebook = {
//release 2
  Joseph: {testScores: scores[0]},
  Susan: {testScores: scores[1]},
  William: {testScores: scores[2]},
  Elizabeth: {testScores: scores[3]},
};
//release 4

gradebook.addScore = function(name, score) {
    gradebook[name]['testScores'].push(score)
  };

// driver code
// gradebook.addScore('Elizabeth', 2);
// console.log(gradebook)

//release 5/7
gradebook.getAverage = function(name){
 return average(gradebook[name]['testScores'])
};
//release 6
var average = function(num_array){
  var sum = 0
  for(var i = 0; i < num_array.length; i++){
    sum += num_array[i]
  }
  return (sum/num_array.length)
};

console.log(average([5, 10, 15, 20]));


// __________________________________________
// Refactored Solution

// var gradebook = {}

// function makeGradebook(students, scores){
//   for (var i = 0; i < students.length; i++){
//     gradebook[students[i]] = scores[i];
//   }
// }

// function gradebook(array_of_students, array_of_grades) {
  
//   //create function that combines student names and grades into a new object
//   this.createGradebook = function() {
//     var gradebook_array = [];
//     for (var index in array_of_students) {
//       var student_name = array_of_students[index];
//       var student_grade = array_of_grades[index];
//       var student_record = {};
//       student_record[student_name] = student_grade;
//       gradebook_array.push(student_record);
//     }   
//     return gradebook_array;
//   }
  
//   // Call the createGradebook() function, to create a new gradebook instance object
//   var current_gradebook = this.createGradebook();
  
//   // function to push new scores into a student's record
//   this.addScore = function(name, score) {
//     // iterate over each student record
//     for (var index in current_gradebook) {  
//       // if name fed as method argument matches name in student record
//       if (current_gradebook[index][name]) {
//         // push score provided as method argument into student record
//         current_gradebook[index][name].push(score);
//         console.log("Updated scores for " + name + ": " + current_gradebook[index][name])
//       }
//     }
//     return current_gradebook;
//   };
  
//   // function to calculate an average score for a student
//   this.getAverage = function(name) {
//     // iterate over each student record    
//     for (var index in current_gradebook) {
//       // if name fed as method argument matches name in student record      
//       if (current_gradebook[index][name]) { 
//         // run the average function on that students record
//         console.log("Average score for " + name + ": " + average(current_gradebook[index][name]));
//         return (average(current_gradebook[index][name]) );
//       }
//     }  
//   }
  
//     function average(num_array){
//       var sum = 0
//       for(var i = 0; i < num_array.length; i++){
//         sum += num_array[i]
//       }
//       return (sum/num_array.length)
//     };      

// };

// //DRIVER CODE
// // create a new instance of a gradebook object and call methods on it.
// var gradebookOne = new gradebook(students, scores)
// gradebookOne.addScore("Susan", 90)
// gradebookOne.getAverage("Susan")





// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// I learned it requires a lot of testing and feel like I've got some
// practicing to do. 

// How did you iterate over nested arrays in JavaScript?
// We used a for loop, which was very handy.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// No new ones, still getting the hang of the old ones. 









// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)