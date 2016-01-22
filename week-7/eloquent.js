// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// 7.2.4
var greeting = "Hi ";
var person = "Peter";

console.log(greeting + person);

// 7.2.6

var question = prompt("What is your favorite food?");
console.log("Hey! That's my favorite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle

for (var symbol = "#"; symbol.length < 8; symbol += "#"){
	console.log(symbol);
}

// FizzBuzz
for (var n = 1; n <= 100; n++) {
  var output = "";
  if ((n % 5 === 0) && (n % 3 === 0 ))
    output = "FizzBuzz";
  else if (n % 5 === 0)
    output = "Buzz";
  else if (n % 3 === 0)
  	output = "Fizz";
  console.log(output || n);
}

// Chess Board (The answer is so cool I wanted to include here to remind myself for creating 2D output.)
size = 8;
output="";
for (var y=0; y < size; y++){
	for (var x=0; x < size; x++){
		if ( (x+y)%2 === 0 )
			output += " ";
		else
			output += "#";
	}
	output += "\n"
}
console.log(output);

// Functions

// Complete the `minimum` exercise.

function min(a,b){
	if (a > b)
      return b;
  	else
      return a;
}
console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Baron",
  age: function age(x) { return 20 + 3 - 5 + 6 },
  favoriteFood: ["Chocolate", "Burrito", "Sushi"],
  quirk: "Dreamer"
}


// Reflection

// DBC 7.2

// Ch.1

// * Did you learn anything new about JavaScript or programming in general?

// Yes, after read through the introduction, I learned that JavaScript has nothing to do with the programming language Java. It has an alias ECMAScript. And also JavaScript has been widely used since the day it published.

// * Are there any concepts you feel uncomfortable with?

// Currently doing alright. Will try to hang on it and absorb whatever I can.

// * Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

// The similarities between Ruby and JavaScript is both have these 6 six basic object types for use. And the usage of these 6 types are so similar. The differences would be how JavaScript treats every numbers as float. And the the NaN and nil are same thing as nil in Ruby.

// Ch.2

// * What is an expression?

// A fragment of code that produces a value is called an expression.

// * What is the purpose of semicolons in JavaScript? Are they always required?

// It tells JavaScript where is the end of the expression. JavaScript allows you to omit the semicolon at the end of a statement.

// * What causes a variable to return undefined?

// If you ask for the value of an empty variable, you’ll get the value undefined.

// * What does console.log do and when would you use it? What Ruby method(s) is this similar to?

// Similar to #puts in Ruby.

// * Describe while and for loops

// A while loop will keep running if the condition statement remain true. 
// A for loop consist of three parts,  the starting state, the condition, and the updating part.

// Ch.3

// * What other similarities or differences between Ruby and JavaScript did you notice in this section?

// Most of the logic are similar. Only things that I can think of are how different the numbers work and how the 
// “puts” work in javaScript is “console.log().”

// * What are the differences between local and global variables in JavaScript?

// Local variables are only visible inside its scope. Such as in the method or blocks. While global variables are 
// visible throughout the program.

// * When should you use functions?

// When you have repetitive codes that do the same work for each individual object, you should use a function to
// organize your codes and make your program DRY.

// * What is a function declaration?

// It is a way to declare a chunk of code is a function. You would like to put the “function” keyword in front of the name that of your newly created function.

// Ch.4

// * What is the difference between using a dot and a bracket to look up a property? Ex. array.max vsarray["max"]

// Dot notation is faster to write and clearer to read comparin to bracket notation. However, there are sometime that
// dot notation can't be preform then we use bracket notation. Bracket notation allows access to properties which containing
// special characters and selection of properties using variables.


// * What is a JavaScript object with a name and value property similar to in Ruby?

// Objects with a name and value property looks like the Hashes in Ruby to me.
// so the name and value pair match with the key and value pair.


