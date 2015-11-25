// DOM Manipulation Challenge

// I worked on this challenge with  Michael Whelpley.

// Add your JavaScript calls to this page:

// Release 0:

document.getElementById('release-0').className = 'done';

// Release 1:

document.getElementById('release-1').style.display = 'none';

// Release 2:

// Line 19 and 21 both work.

// document.getElementsByTagName('h1')[0].firstChild.data = "I completed release 2.";

document.getElementsByTagName('h1')[0].textContent = "I completed release 2.";

// Release 3:

document.getElementById('release-3').style.backgroundColor='#955251';


// Release 4:

var x = document.getElementsByClassName('release-4');

for (var i=0;i<x.length;i++){
  x[i].style.fontSize='2em';
}
// document.write(x);


// Release 5:

var secrets = document.getElementById('hidden');

document.body.appendChild(secrets.content.cloneNode(true));

// Reflection!
/*

What did you learn about the DOM?

-First off, we learned how to access elements by their HTML or CSS classifications; then, we learned how to change the contents or attributes of those elements.

What are some useful methods to use to manipulate the DOM?
-getElement(s)By* : find the elements by CSS classification or html tag
-appendChild: add something to the end of an element
-data: access the data inside an element
-textContent: access only the text inside an element

*/