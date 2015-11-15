 // Design Basic Game Solo Challenge

// This is a solo challenge
//

/*
The Raver and the Bear
adapted from Colin Farhrion's RPG
adaption licensed under Creative Commons Attribution 4.0 International License
http://mirthpeddlers.com/2015/05/the-raver-and-the-bear/
*/

// VERSION 1 - MVP
//
// Your mission description: Please the bear by playing it the correct record
// Overall mission: It's a basic guessing game in this version
// Goals: Play the correct record that is randomly selected from the array at initialization
// Characters:
// DJ (props: current playing record, # grumbles received, # wiggles received),
// Bear (prop: favorite record)
// Objects: Stack - an array of strings to represent the records
// Functions:
// display() - print out records in Stack
// gameIntro() - run intro text, bearChoose(), display()
// bearChoose() - pick random record from Stack for Bear's fave
// conclusion(prompt) - take result from prompt, set DJ's current, run compareTracks and checkCounters with new results
// compareTracks - check DJ's current track vs Bear's fave, adjust grumble/wiggle counters
// checkCounters - return Win/Lose condition based on counters
// playGame() - run gameIntro, prompt for first input to conclusion(prompt)


// Pseudocode
/*
Initialize code to allow prompts
Define variable "stack" containing strings to represent records
Define variable "dj", 3 properties
    current: empty string
    grumbles: 0
    wiggles: 0
Define variable "bear", 1 property
  fave: empty string
Define function "display"
  iterates over stack, prints each string unless it is the dj's currently paying one, which gets extra message
Define function "gameIntro"
  prints intro text
  calls bearChoose()
  calls display()
Define function "bearChoose"
  set Bear's fave equal to random entry from stack
Define function "conclusion"
  takes a user prompt as argument
  set DJ's current from the user prompt
  print string containing DJ's current
  calls compareTracks on DJ's current vs Bear's fave
  calls checkCounters on DJ's wiggles and grumbles
Define function "compareTracks"
  takes 2 arguments
  IF equal, increment wiggles counter
  ElSE increment grumbles counter
Define function "checkCounters"
  takes 2 arguments (the grumbles and wiggles counters)
  IF wiggles equal 1, win
  ELSE IF grumbles equal 1, lose
Define function "playGame"
  calls gameIntro
  prompts user input - sends to conclusion
Call playGame
*/

// MVP - one-turn Win/Lose guessing game

/*
var prompt = require('prompt');
prompt.start();

var stack = [
  "wub wub wub ",
  "oontz oontz oontz ",
  "doo wap doo wah ",
  "don't Snapchat that duckface ",
  "boots and pants "
];

var dj = {
  current: "",
  grumbles: 0,
  wiggles: 0,
};

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

function gameIntro() {
  console.log("Wow, what a sweet forest rave.");
  console.log("AHHH! A BEAR! Only a DJ can save us!");
  console.log("You have to play the right track to appease the ursine raver.");
  bearChoose();
  display();
}

function bearChoose() {
  bear.fave = stack[Math.floor(Math.random()*stack.length)];
}

function conclusion(err, result) {
  dj.current = stack[result.track_choice];
  console.log("You lay down a fat track, and the speakers go: " + dj.current + dj.current + dj.current);

  compareTracks(dj.current, bear.fave);

  checkCounters(dj.wiggles, dj.grumbles);
}

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

function checkCounters(wiggles, grumbles) {
  if (wiggles == 1)
    console.log("The bear give you a big hug. You have saved the rave!");
  else if (grumbles == 1)
    console.log("The bear raises its claw and mauls you. This was not a good rave.");
}

function playGame() {
  gameIntro();
  prompt.get(['track_choice'], conclusion);
};

// Driver Code
playGame();
*/

// ----------------
// Refactored Code
// now a multi-turn guessing game
// (not quite the full version of the original game)

// Refactor log:
// Collapse gameIntro text to one call
// Raise limit on grumbles to 3 before mauling occurs, if neither Win/Lose acheived, cycles back to prompt call
// compress initialization of variables to one function
// if wrong record played, wiggles reset to 0, must acheive 2 wiggles to win
// edited game text for flavor and legibility
// returns error message if bad choice made at prompt
// rename bear.fave to bear.wants (relevant to upcoming version)
// ...
// Stopping here, before full-game implementation (see link at top for original game). Full version will require a method to shuffle an array, and I have run out of time while trying to make my own (and research is limited in the solo challenges.)

function initialize() {
  prompt = require('prompt');
  prompt.start();
  stack = [
    "wub wub wubba wub",
    "oontz oontz oontz",
    "doo wap doo wah",
    "don\'t Snapchat that duckface",
    "boots and pants"
  ];
  dj = {
    current: "",
    grumbles: 0,
    wiggles: 0,
  };
  bear = {
    wants: "",
  };
}

function gameIntro() {
  console.log("Wow, what a sweet forest rave. It's a perfect time to lay down some tasty jams.\n\nAHHH! A BEAR! Only a DJ can save us!\n\nThis bear has a specific musical taste.\nYou have to play the right track to appease the ursine raver.\nChoose wisely - if you keep making it mad, it might attack you!\nIf the bear likes a track, play it again!\n");
  bearChoose();
  display();
}

function bearChoose() {
  bear.wants = stack[Math.floor(Math.random()*stack.length)];
}

function display() {
  console.log("Here are the tracks you can play.\nChoose a number from 0 to 4 to play the corresponding track:");
  for (var i = 0; i < stack.length; i++) {
    if (stack[i] == dj.current)
      console.log("Track #" + i + ": " + stack[i] + " (CURRENTLY PLAYING)");
    else
      console.log("Track #" + i + ": " + stack[i]);
  }
  console.log("\n")
}

function playTurn(err, result) {
  if (stack[result.track_choice] == undefined){
    console.log("\nYou fumble at the controls. Are you really a board-certified DJ?");
  }
  else {
    dj.current = stack[result.track_choice];
    console.log("\nYou lay down a fat track, and the speakers go: * " + dj.current + " * " + dj.current + " * " + dj.current + " *");
  }
  compareTracks(dj.current, bear.wants);
  checkCounters(dj.wiggles, dj.grumbles);
}

function compareTracks(track1, track2){
  if (track1 == track2) {
    dj.wiggles++;
    console.log("\nThe bear grunts in approval and wiggles its butt.");
  }
  else {
    dj.grumbles++;
    dj.wiggles = 0;
    console.log("\nThe bear rumbles his discontent.\nBetter watch out ...");
  }
}

function checkCounters(wiggles, grumbles) {
  if (wiggles == 2)
    console.log("\nThe bear gives you a big fuzzy hug.\nYou have saved the rave!");
  else if (grumbles == 3)
    console.log("\nThe bear raises its claw and mauls you.\nThis was not a good rave.");
  else {
    if (wiggles == 1)
      console.log("\nLooks like the bear is into it.\nPlay that track again!\n");
    else
      console.log("\nThe bear is still lumbering about on the dance floor.\nTry another record!\n");
    display();
    prompt.get(['track_choice'], playTurn);
  }
}

function playGame() {
  initialize();
  gameIntro();
  prompt.get(['track_choice'], playTurn);
};

playGame();


// Reflection
//
//
/*
What was the most difficult part of this challenge?

-The winner, by miles ahead: getting prompt calls to work how I wanted. It was a long process to first discover that I had to download and require a special library in the first place, and then to understand the flow of information in JS to make use of the prompt's return.

What did you learn about creating objects and functions that interact with one another?

-As I learned from implementing prompts, is that the order in which the program is executed is VERY important to consider: for example, if you call a function lower in a file (but outside of) a prompt call, it will still be executed before the prompt. Whiteboarding the step-by-step process helped me piece together the flow of my program.


Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

-Not exactly: I had hoped to hit on a shuffle method for arrays, but it looks like I'll have to make my own (or just look one up once outside the context of the solo challenge).
-I would consider getting prompt calls down to be a proficiency at least on par with learning a new method.

How can you access and manipulate properties of objects?

Like this: objectName.propertyName = newThing

*/