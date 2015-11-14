prompt = require('prompt');
prompt.start();


var villain = {
  name: "Chad"
};

var hero = {
  name: "Steve"
}
console.log(villain.name + " was here first");

function test(err, result) {
  console.log('New name: ' + result.newname);
  villain.name = result.newname;
  console.log(villain.name + " is still a jerk.");

}

prompt.get(['newname'], test);



//if (empty != []) console.log(empty);


//console.log(villain.name + " should be the new name");
// but it's not! line 18 is executed before the prompt instead of after...