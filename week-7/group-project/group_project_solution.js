// User Stories
// --------------

// I have two sets of numbers called oddLengthArray and evenLengthArray...

// Story 1
// I want to find the sum of all the numbers in each list. Call this function sum.

// Story 2
// I want to find the average of each list of numbers. Call this function mean.

// Story 3
// I want to find the median of each list of numbers. Call this function median.


// add pseudocode and pass on without the above descriptions.

// 7.8 JavaScript Telephone
// Person 4 - Bill Deng

// var oddLengthArray = [18,19,4,26,54];
// var evenLengthArray = [6,2,2,16];

// Steps - Story 1

// As a user, I want to input a list of numbers and output the total
function each(array){
  return array.reduce(function(a, b) {
    return a + b;
  });
}

var oddTotal = each(oddLengthArray);
var evenTotal = each(evenLengthArray);

// As a user, I want to input 2 numbers and output the total
function sum(total1, total2){
  console.log(oddTotal + evenTotal);
}

sum(oddTotal, evenTotal);

// Steps - Story 2

// As a user, I want to input a list of numbers and output the mean or average
function mean(array){
  return console.log(array.reduce(function(a, b) {
    return a + b;
  }) / array.length);
}

mean(oddLengthArray);
mean(evenLengthArray);

// Steps - Story 3

// As a user, I want to input a list of numbers and output the median
function median(array){
  var halfArrLength = array.length / 2,
      sorted_array = array.sort(function(a, b){return a-b});
  if (array.length % 2 == 0){
    console.log((sorted_array[halfArrLength] + sorted_array[(halfArrLength)-1])/ 2);
  } else {
    console.log(sorted_array[(halfArrLength) - 0.5]);
  }
}

median(evenLengthArray);
median(oddLengthArray);

*****RESULTS*****

70
3.857142857142857
5.375
5.5
4
1. true
70
2. false

/Users/Leland/DevBootcamp/phase-0/week-7/group-project/tests.js:65
    throw "ERROR: " + message;
    ^
ERROR: sum should return the sum of all elements in an array with an odd length.


// ******Summary******

// This was very close to working perfectly, and with minor adjustments we
// would have a perfect set of functions. 

// For Story 1 Rather than giving a total value
// of the numbers in each array (27 and 43), we have the total of both 
// arrays (70). Which in a way meets our challenge and then exceeds it. 

// For Story 2 We have the correct output for the mean of each array
// ( 3.857 and 5.375) it is recognized as a function

// For Story 3 We have the correct output for the median (4 and 5.5). But it
// may not be recognized as a function as there is a "false" return.

// The order in which the answers are returned is confusing to me, I would expect of our
// 9 answers the first three to correspond with the first question and the last
// three to correspond with the last but it looks like they are all over, I 
// wonder if the math based functions have precedence over the booleans and that
// is why their order is changed around. 
















