// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var bill = 112;
bill++;
console.log(bill);

// Favorite Food program

var favoriteFood = prompt("What's your favorite food?");
alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//Triangle

for (var output = "#"; output.length <= 7; output += "#")
  console.log(output);

//FizzBuzz

for (var counter = 0; counter <=100; counter++) {
  if (counter % 3 == 0) {
    if (counter % 5 == 0) console.log("FizzBuzz");
    else console.log("Fizz");
  }
  else if (counter % 5 == 0) console.log("Buzz");
  else console.log(counter);
}

//Chess Board

var size = 8;
for (var height = 0; height <= (size - 1); height++) {
  var printLine = ""
  for (var width = 0; width <= (size - 1); width++) {
    if (height % 2 == 0) {
      if (width % 2 ==0) printLine += " ";
      else printLine += "#";
    }
    else {
      if (width % 2 ==0) printLine += "#";
      else printLine += " ";
    }
  }
  console.log(printLine);
}


// Functions

// Complete the `minimum` exercise.

function min(a, b) {
 return (a <= b ? a : b);
}



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Michael",
  age: 35,
  favoriteFoods: ["sushi", "croissants", "pate"],
  quirk: "Owns over 3 dozen puppets"
};