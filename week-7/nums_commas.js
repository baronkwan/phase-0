// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Byron, Baron.

// Pseudocode
// 1. Convert input into string
// 2. Split it into an array and reverse it.
// 3. Starting from the index 3, concatenate a comma after that particular item on every third item.
// 4. Reverse the modified array and then join them back together.
// 5. Return the result.

// Initial Solution

function separateComma(number){
  var ConvertString = number.toString();
  var numReversedArray = number.toString().split("").reverse();
  for (var i = 3; i < numReversedArray.length; i += 3){
    numReversedArray[i] += ",";
  }
  var result = numReversedArray.reverse().join("");
  return result;
}


// Refactored Solution

function separateComma(number){
  var numReversedArray = number.toString().split("").reverse();
  for (var i = 3; i < numReversedArray.length; i += 3){
    numReversedArray[i] += ",";
  }
  var result = numReversedArray.reverse().join("");
  return result;
}

// Your Own Tests (OPTIONAL)

console.log(separateComma(100))
console.log(separateComma(1000))
console.log(separateComma(10010))
console.log(separateComma(100101))
console.log(separateComma(1001000))

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// I think for the whole logic thing every programming language should be quite similar.
// Only thing that I think why I felt it is different to code in JavaScript is we don't have that
// many build-in methods compared with Ruby. That forced us to think more deeply and use a more
// basic approach to achieve the same goal in JavaScript.


// What did you learn about iterating over arrays in JavaScript?

// I used the for loop on this challenge to iterate over the number array. The for loop in JavaScript
// is quite different from Ruby. It has three parts, 1) the starting counter, 2) the condition and
// 3) the change in counter. They all show up right after the key word "for". Which is not close to 
// what we used to in Ruby. Which we do all three inside the for loop body.


// What was different about solving this problem in JavaScript?

// It was hard to try to apply the same mindset we used in Ruby on JavaScript. But once you figured
// that how those basic pieces work - The "aha" moment everything starting to make sense in a second.


// What built-in methods did you find to incorporate in your refactored solution?

// I used the number#toString, string#split, Array#reverse and Array#join.