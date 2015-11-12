 // JavaScript Olympics

// Michael Whelpley and Nil Thacker worked on this challenge.

// This challenge took me [1] hours.


// Warm Up

// we're already warm
// and limber


// Bulk Up


// input: athelete information (array of objects)
// output: print that athelete won event (string)
// steps:
//   set up a loop that runs as many times as the length of the array
//     for each loop iteration:
//       add a "won" property to the object and set it equal to true
//       print that the athelete won the event


var athletes = [
  {name: "bob", event: "jumping"},
  {name: "asdf", event: "asdf"}
]

function winner(array) {
  var arrayLength = array.length;
  for (var i = 0; i < arrayLength; i++) {
    array[i].won = true;
    console.log(array[i].name + " won the " + array[i].event + " event!")
  }
}

winner(athletes)

// Jumble your words

// input: string to reverse (string)
// output: return the reversed string (string)
// steps:
//   split the string into an array of characters
//   use the built-in reverse function for an array to reverse this new array of characters
//   join the reversed array of characters back into a string

var inputString = "quick brown fox"

function reverse(string){
 return string.split("").reverse().join("");
}

console.log(reverse(inputString));


// 2,4,6,8


// Input: Array of numbers
// output: array with only evens
// Process:
//   create a new empty array
//   set up a loop that runs as many times as the length of the array
//     for each loop iteration:
//           if the element is even
//             add it to a the array

var testArray = [4, 5, 7, 8, 10, 11, 13]

function evens(array) {
  var arrayLength = array.length;
  var evensArray = [];
  for (var i = 0; i < arrayLength; i++) {
    if((array[i] % 2) == 0)
      evensArray.push(array[i]);
  }
  return evensArray;
}

console.log(evens(testArray));


// "We built this city"

function Athlete (name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " plays " + michaelPhelps.sport + " and says \"" + michaelPhelps.quote + "\"")


//
// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
-Accessing hash-like arrays works differently
-JS does not have as many useful pre-defined methods a Ruby
-you have to declare a new variable with "var" every time you bring one into existence
-JS's array #delete method will turn the value at an array index to "undefined", but leave that array index the empty (ie, not filling in from the other entries)

What are constructor functions?

-They are a function used to create an object with a specified set of attributes. They are useful whenever you anticipate create multiple instances of an object sharing the same set of attributes.

How are constructors different from Ruby classes (in your research)?

-Aside from syntax differences, a JS constructor is itself another variable, while in Ruby a "class" is its own special thing (while still being an Object)

*/
