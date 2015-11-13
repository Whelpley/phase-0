var prompt = require('prompt');
prompt.start();

var obj = {
  password: 'lamepassword',
  mindset: 'NY'
}

//
// Log the initial object.
//
console.log('Initial object to be extended:');
console.dir(obj);

//
// Add two properties to the empty object: username and email
//
prompt.addProperties(obj, ['username', 'email'], function (err) {
  //
  // Log the results.
  //
  console.log('Updated object received:');
  console.dir(obj);
});

//console.log(obj); // this prints the old "obj" value, before the prompt and update - WTF? do I need to nest further results from the prompt within the first prompt call? That could get into a deep hole with repeated calls...