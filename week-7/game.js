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

// MVP - one-turn Win/Lose guessing game
/*
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

// declaring a DJ character, with attributes for track being played, grumbles received, and wiggles received
var dj = {
  current: "",
  grumbles: 0,
  wiggles: 0,
};

// declaring a bear character, with a favorite record (initially undecided)
var bear = {
  fave: "",
};

// function to display tracks and what is currently playing
function display() {
  console.log("Here are the tracks you can play:");
  for (var i = 0; i < stack.length; i++) {
    if (stack[i] == dj.current)
      console.log("Currently playing:" + stack[i]);
    else
      console.log("Track #" + i + ": " + stack[i]);
  }
}

// fcn to start the game and load the bear's favorite track
function gameIntro() {
  console.log("Wow, what a sweet forest rave.");
  console.log("AHHH! A BEAR! Only a DJ can save us!");
  console.log("You have to play the right track to appease the ursine raver.");
  bearChoose();
  display();
}

//fcn to choose random track from stack for bear's favorite
function bearChoose() {
  bear.fave = stack[Math.floor(Math.random()*stack.length)];
}

// fcn to take input from prompt and calculate game conclusion
function conclusion(err, result) {
  dj.current = stack[result.track_choice];
  console.log("You lay down a fat track, and the speakers go: " + dj.current + dj.current + dj.current);

  compareTracks(dj.current, bear.fave);

  checkCounters(dj.wiggles, dj.grumbles);
}

// fcn to check tracks and update counters
function compareTracks(track1, track2){
  if (track1 == track2) {
    dj.wiggles++;
    console.log("The bear grunts in approval and wiggles its butt.");
  }
  else {
    dj.grumbles++;
    console.log("The bear rumbles his discontent. Better watch out ...");
  }
}

// fcn to check counters & determine Win/Lose of game
function checkCounters(wiggles, grumbles) {
  if (wiggles == 1)
    console.log("The bear give you a big hug. You have saved the rave!");
  else if (grumbles == 1)
    console.log("The bear raises its claw and mauls you. This was not a good rave.");
}

// the script of the game
function playGame() {
  gameIntro();
  prompt.get(['track_choice'], conclusion);
};

// Driver Code
playGame();*/

// ----------------
// Refactored Code

// Refactor log:
// ... acheived ...
// -collapse gameIntro text to one call
// -raise limit on grumbles to 3 before mauling occurs, if neither Win/Lose acheived, cycles back to call
// Full Game -
// if wrong record, wiggles reset to 0
// must acheive 2 wiggles to win
// * added * sound * effects * to * playTurn * method *
// if player chooses non-valid track, gets error message
// rename bear.fave to bear.wants
//...docket below...
// Bear gets shuffled array of album order
// bear gets pointer to current fave (starts empty)

var prompt = require('prompt');
prompt.start();

var stack = [
  "wub wub wub",
  "oontz oontz oontz",
  "doo wap doo wah",
  "don\'t Snapchat that duckface",
  "boots and pants"
];

var dj = {
  current: "",
  grumbles: 0,
  wiggles: 0,
};

var bear = {
  wants: "",
};

function gameIntro() {
  console.log("Wow, what a sweet forest rave.\nAHHH! A BEAR! Only a DJ can save us!\nYou have to play the right track to appease the ursine raver.\nChoose wisely - if you keep making it mad, it might attack you!\nIf the bear likes a track, play it again!");
  bearChoose();
  display();
}

// change to build the bear's choice stack
function bearChoose() {
  bear.wants = stack[Math.floor(Math.random()*stack.length)];
}

function display() {
  console.log("Here are the tracks you can play:");
  for (var i = 0; i < stack.length; i++) {
    if (stack[i] == dj.current)
      console.log("Currently playing Track #" + i + ":" + stack[i]);
    else
      console.log("Track #" + i + ": " + stack[i]);
  }
}

function playTurn(err, result) {
  if (stack[result.track_choice] == undefined){
    console.log("You fumble at the controls.");
  }
  else {
    dj.current = stack[result.track_choice];
    console.log("You lay down a fat track, and the speakers go: * " + dj.current + " * " + dj.current + " * " + dj.current + " *");
  }
  compareTracks(dj.current, bear.wants);
  checkCounters(dj.wiggles, dj.grumbles);
}

function compareTracks(track1, track2){
  if (track1 == track2) {
    dj.wiggles++;
    console.log("The bear grunts in approval and wiggles its butt.");
  }
  else {
    dj.grumbles++;
    dj.wiggles = 0;
    console.log("The bear rumbles his discontent. Better watch out ...");
  }
}

function checkCounters(wiggles, grumbles) {
  if (wiggles == 2)
    console.log("The bear gives you a big hug. You have saved the rave!");
  else if (grumbles == 3)
    console.log("The bear raises its claw and mauls you. This was not a good rave.");
  else {
    console.log("The bear is still on the dance floor. Pick another record!");
    display();
    prompt.get(['track_choice'], playTurn);
  }
}

function playGame() {
  gameIntro();
  prompt.get(['track_choice'], playTurn);
};

playGame();




// Reflection
//
//
//
//
//
//
//
//