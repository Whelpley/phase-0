prompt = require('prompt');
prompt.start();


villain = {
  name: "Chad"
};

console.log(villain.name + " was here first");

prompt.get(['newname'], function (err, result) {
  console.log('New name: ' + result.newname);
  villain.name = result.newname;
  console.log(villain.name + " is still a jerk.");
});


console.log(villain.name + " should be the new name");
// but it's not! line 18 is executed before the prompt instead of after...