=begin

Pseudocode - first go!

Input: An array of strings
Output: An array of arrays, each sub-array is a group of 4 to 5 people, 3 if necessary.
Steps:
1) get length of imput list
2) determine total # of groups


Note: this will only work with groups of 8 or more...

=end

list_of_names = [
  "Syema Ailia",
  "Alan Alcesto",
  "Daniel Andersen",
  "James Artz",
  "Darius Atmar",
  "Brian Bensch",
  "Nicola Beuscher",
  "Kris Bies",
  "Logan Bresnahan",
  "William Brinkert",
  "Scott Chou",
  "Bernice Anne W Chua",
  "Abraham Clark"
]

def group_creator(list)
  total = list.length
  groups = (total/4)
  remainder = total%4


end

group_creator(list_of_names)