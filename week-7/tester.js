var prompt = require('prompt');
prompt.start();

//
// Start the prompt
//



var steve = {
  name: "bill",
}

//
// Get two properties from the user: username and email
//
var thinger = function (){
prompt.get(['username'], function (err, result) {
  //
  // Log the results.
  //
  console.log('Command-line input received:');
  console.log('  username: ' + result.username);
  steve.name = result.username;
});
}

thinger();

console.log(steve.name + " is cool");

