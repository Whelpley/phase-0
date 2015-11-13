 // Design Basic Game Solo Challenge

// This is a solo challenge
//

/*
The Raver and the Bear
adapted from Colin Farhrion's RPG
Creative Commons License
www.site.whatever
*/

// VERSION 1 - MVP
//
// Your mission description: Please the bear by playing it the correct record
// Overall mission: it's a basic guessing game in this version
// Goals: Play the correct record that is randomly selected from the array at initialization
// Characters: DJ, Bear
// Objects: an array of records
// Functions: Play record (DJ), Respond Wiggle/Maul(Bear)

// Pseudocode
/*
create Record Stack - 5-entry array of strings
create DJ -
methods: play record
create Bear:
methods: initialize favorite, response
intro text, prompt choice from player to start DJ play method
play command prompts response from bear
win/lose text
*/


// Initial Code

// initial code to allow prompting
var prompt = require('prompt');
prompt.start();

// Loading up the record stack
var stack = [
  "wub wub wub ",
  "oontz oontz oontz ",
  "doo wap doo wah ",
  "don't Snapchat that duckface ",
  "boots and pants "
];

// declaring a DJ character, with attributes for track being played, mauls received, and wiggles received
var dj = {
  current: "",
  mauls: 0,
  wiggles: 0,
};

// declaring a bear character, with a favorite record (as yet undecided)
var bear = {
  fave: "",
};

function display() {
  console.log("Here are the tracks you can play:");
  for (var i = 0; i < stack.length; i++) {
    if (stack[i] == dj.current)
      console.log("Currently playing:" + stack[i]);
    else
      console.log("Track #" + i + ": " + stack[i]);
  }
}

function playGame() {
  console.log("Wow, what a sweet forest rave.");
  console.log("AHHH! A BEAR! Only a DJ can save us!");
  console.log("You have to play the right track to appease the ursine raver.");
//choose random track from stack for bear's favorite
  bear.fave = stack[Math.floor(Math.random()*stack.length)];



// show tracks and prompt a selection by user
// will have to account for non-friendly inputs
// gotta get prompt working
  display();
  var selection = 1; // prompt("Choose a track by number");
  dj.current = stack[selection];
  console.log("You lay down a fat track, and the speakers go: " + dj.current + dj.current + dj.current);

// compare chosen track with bear's fave, consequences
  if (dj.current == bear.fave) {
    dj.wiggles++;
    console.log("The bear grunts in approval and wiggles its butt.");
  }
  else {
    dj.mauls++;
    console.log("The bear rumbles his discontent.");
  }

// // final consequences
  if (dj.wiggles == 1)
    console.log("The bear give you a big hug. You have saved the rave!");
  else if (dj.mauls == 1)
    console.log("The bear raises its claw and mauls you. This was not a good rave.")
};


// Driver Code

playGame();



// Refactored Code






// Reflection
//
//
//
//
//
//
//
//