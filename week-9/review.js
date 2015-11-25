// 9.2.2 Translate Ruby to JavaScript
// re-do of 6.2 Die Class 2, Arbitrary Symbols

// Pseudocode

/*
-Declare a new function (Die) which accepts one argument (an array)
  -Raise an error IF the argument is not an array
  -Declare sides method that returns the length of the array
  -Declare roll method
    -get a random number from 0 to the array length
    -access the input array by index of the rando number
*/

// Initial Solution

function Die(array) {
  if (!(array instanceof Array)) {
    throw new Error("That is so very not valid.");
  };
  this.sides = array.length;
  this.roll = function(){
    var index = Math.floor(Math.random()*this.sides);
    return array[index];
  }
}

// Driver code

catanDie = ['blue', 'green', 'yellow', 'doom ship', 'doom ship', 'doom ship',];

var newGame = new Die(catanDie);

console.log(newGame.sides);

for (var i=0;i<4;i++) {
  console.log(newGame.roll());
}

notaDie = 67;
newGame = new Die(notaDie);




// Refactor

// so simple, nothing to refactor!

// Reflect
/*

What concepts did you solidify in working on this challenge?

-For me, this one was all about learning the JS syntax in contast with Ruby. While this exercise was simple  algorithmically , I found the translation aspect challenging.
-In particular, I solidified my ability to create and access objects using the Constructor notation.


What was the most difficult part of this challenge?

-Learning how to redo everything in JS; particularly figuring out how to raise an Error in response to invalid input.

Did you solve the problem in a new way this time?

-Not really :)


Was your pseudocode different from the Ruby version? What was the same and what was different?

-Also, not so much different.

*/