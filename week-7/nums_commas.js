// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Alexsandra Nowak.

// Pseudocode

//input: integer
//output: integer with the comma every 3 spaces from the last

// 1. covert int to a string
// 2. split sting to an array on char each
// 3. reverse array order
// 4. insert comma every 3rd element
// 5. reverse
// 6. join

// Initial Solution

/*function slicer(num) {
 var numArray = num.toString().split("").reverse();
 var stringLength = num.toString().length;


 if (stringLength <= 3) {
  return num;
 }
 else {
  for(var count = 3; count < stringLength+3; count += 4){
  numArray.splice(count,0,",")
  };
  return numArray.reverse().join("");
 }
}*/




// Refactored Solution
// (just removed the "else")

function slicer(num) {
  var numArray = num.toString().split("").reverse();
  var stringLength = num.toString().length;

  if (stringLength <= 3) {
    return num;
  }

  for(var count = 3; count < stringLength+3; count += 4){
    numArray.splice(count,0,",")
  };
  return numArray.reverse().join("");
}


// Your Own Tests (OPTIONAL)

console.log(slicer(100000000000000))
console.log(slicer(10000000000445345))
console.log(slicer(10000000034555))
console.log(slicer(1435))
console.log(slicer(1))
console.log(slicer(112))



// Reflection

/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

-It was difficult at first, mainly due to learning the syntax of JavaScript. Since we did not know what methods JS had available, it was difficult to figure out how to proceed. As it was, we ended up using a JS method (splice) because we did not otherwise know how to insert into an array.

What did you learn about iterating over arrays in JavaScript?

-If does not necessarily need an Else after it, and the For loop has a different syntax.

What was different about solving this problem in JavaScript?

-Not having the tasty Ruby methods required breaking down the problem into more steps.

What built-in methods did you find to incorporate in your refactored solution?

-As mentioned above, .splice was out life-saver, allowing the insertion of items into an array. We could have implemented a clunky version of .splice, but I am already getting a headache thinking through its logic.

*/