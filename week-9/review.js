// 1. Translate Ruby to JavaScript

// I worked on this challenge [by myself].
// This challenge took me [1] hour.


// Pseudocode

// 1. Create a super_fizzbuzz method which take an array and test FizzBuzz based on that array.

// Solution

function super_fizzbuzz(array) {
	for (var num in array) {
		var output = "";
		if ((array[num] % 5 === 0) && (array[num] % 3 === 0 )) {
			output = "FizzBuzz";
		} else if (array[num] % 5 === 0) {
			output = "Buzz";
		} else if (array[num] % 3 === 0) {
			output = "Fizz";
		}
		console.log(output || array[num]);
	}

}

var a = [1,2,3,4,5,6,7,8,9,10,15,30];
super_fizzbuzz(a);


// Reflection

// What concepts did you solidify in working on this challenge?

// The Translation from JS to Ruby and uby to JS is smoothier. Also I feel more comfortable about
// iterate through list in both JS and Ruby.


// What was the most difficult part of this challenge?

// The only thing I missed on the first try is I forgot to retreive value of the array by using the [].


// Did you solve the problem in a new way this time?

// The logic is the same, but I feel good about using the iterator now.


// Was your pseudocode different from the Ruby version? What was the same and what was different?

// No. I used the same logic for this task because this question is quite straight forward.

