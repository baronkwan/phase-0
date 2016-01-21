 // JavaScript Olympics

// I paired [Baron Kwan, John Seo] on this challenge.

// This challenge took me [1] hours.


// Warm Up



// Bulk Up

function addWin(array) {
  for (var i=0;i< array.length; i++) {
    array[i].win = array[i].name + " won the " + array[i].event;
    console.log(array[i].win);
  }
}

var Michael = {name: "Michael", event: "Singles"};
var Claire = {name:"Claire", event: "doubles"};
var myArray = [Michael, Claire];
addWin(myArray);

// Jumble your words
function jumble(string) {
 return string.split("").reverse().join("");
  
}
var myString = "hello"
console.log(jumble(myString));


// 2,4,6,8
function evenOnly(array) {
  var newArray = [];
  for (var i =0; i <array.length; i++) {
     if (array[i]%2==0)
       newArray.push(array[i]);
  }
  return newArray;
}

var sample = [1,2,3,4,5,6]
console.log(evenOnly(sample))

// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// I have a better understanding on declare a function both literal and constructoral way.
// I also learn more about JavaScript and how it expects us as the programmer to program.


// What are constructor functions?

// Constructor function type notation is preferred if you need to do some initial work before 
// the object is created or require multiple instances of the object where each instance can be
// changed during the lifetime of the script.


// How are constructors different from Ruby classes (in your research)?

// The initial key word "function {}" vs "def end". And the way it use "this." for its property and
// the way Ruby use "@" in front for its instance variables.

