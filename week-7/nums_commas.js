// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Kunal Patel.

// Pseudocode
// input: integer
// output: string with Commas

// convert integer to string
// make array
// reverse
// slice into groups of three
// join together with "," between groups
// reverse to proper order


// Initial Solution
// var separateComma = function(integer) {
// 	var array = integer.toString().split("")
// 	var array = array.reverse()
// 	for(var counter = 3; counter < array.length; counter +=4)
// 		{array.splice(counter,0,",")}
// 	var array = array.reverse().join("")
// 	console.log(array)
// };


// separateComma(12345678)

// Refactored Solution
// simplify variable names, combine 20 and 21.

var separateComma = function(bigNumber) {
	var workingNumber = bigNumber.toString().split("").reverse()
	for(var counter = 3; counter < workingNumber.length; counter +=4)
		{workingNumber.splice(counter,0,",")}
	var workingNumber = workingNumber.reverse().join("")
	console.log(workingNumber)
};

separateComma(12345678)


// Your Own Tests (OPTIONAL)
separateComma(12345678)
separateComma(33)
separateComma(8927365489327587653)



// Reflection
What was it like to approach the problem from the perspective of JavaScript? 
Working in JavaScript is frustrating because ruby is still new enough that I 
often mix up their syntax requirements, JavaScript seems to have a lot more quirks 
and superfluous requirements like () after methods and more curley brackets and semi
colons but it is helping me cement how to think in coding language.

Did you approach the problem differently?
Still approached the problem in the same way, I just had to figure out how to write 
in JavaScript's terms instead of ruby. Which means using var and a lot more parenthesis 
and curley brackets. We were hung up for awhile because we were missing one curley bracket. 

What did you learn about iterating over arrays in JavaScript?
In JavaScript the for() loop is your best friend for iteration. It has three inputs, the 
first is executed before your code block(sets where your code block starts), the second 
sets the condition for running the code block, and the third executes after your code block
(advances to the next index item with i++). This is followed by the code block in curley braces. 

What was different about solving this problem in JavaScript?
So JavaScript seems a little more clunky than ruby which is nice to for writing logic, in ruby I
have trouble with the simple logic and often find method to just do what I want and JavaScript
requires me to take up some time and space and write out the lines of logic a little more. I also 
found a strange quirk when tried to run a larger number JavaScript stopped at the 16th digit and 
rounded up.

What built-in methods did you find to incorporate in your refactored solution?
I used toString(), split(), reverse(), lenth, splice(), and join(). These are all pretty much 
the same as what I could use in ruby but toString is longer than to_s and they all require ().





