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
  "Abraham Clark",
  "Michael Whelpley"
]

def group_creator(list)
  total = list.length
  result = []
  holder = []

  if total % 5 == 0
    result = list.each_slice(5).to_a
  elsif total % 4 == 0
    result = list.each_slice(5).to_a
  else
    roll_over = total % 4
    holder << list.pop(roll_over)
    result = list.each_slice(4).to_a

=begin
    if roll_over == 3
      result << holder

      #tricky part right here! gotta shift around those slices back into the final array first
    elsif roll_over == 2
      result[0].concat(holder[0])
      result[1].concat(holder[1])
    elsif roll_over == 1
      result[0].concat(holder[0])
    else
      puts "Something is wrong!"
    end

    =end




  end

  p result


end

group_creator(list_of_names)