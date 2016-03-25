// 7.8 JavaScript Telephone
// Person 4 - Bill Deng

// var oddLengthArray = [18,19,4,26,54];
// var evenLengthArray = [6,2,2,16];
oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]
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
median(oddLengthArray);// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)