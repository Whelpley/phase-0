=begin

Pseudocode - first go!

Input: An array of strings
Output: An array of arrays, each sub-array is a group of 4 to 5 people, 3 if necessary.
Steps:
1) get length of imput list
2) determine total # of groups
3) case out by total #
  a) if divisible by 5, groups of 5
  b) if divisible by 4, groups of 4
  c) otherwise, calculate the remainder when divided by 4, case out:
    i) remainder =

Note: this will only work with groups of  or more...

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
  "Jon Clayton",
  "Kevin Corso",
  "Jacon Crofts",
  "Amaar Falzani",
  "Solomon Fernandez",
  "Edward Gemson",
  "Jamar Gibbs",
  "Chris Gomes",
  "Will Granger",
  "Christopher Guard",
  "Ryan Ho",
  "Igor Kazimirov",
  "Walter Kerr",
  "Karla King",
  "Becky Lehmann",
  "Malia Lehrer",
  "Carolina Medellin",
  "Timothy Meixell",
  "Lorena Mesa",
  "Chris Miklius",
  "Joshua Monzon",
  "Shea Munion",
  "Bryan Munroe",
  "Trevor Newcomb",
  "Aleksandra Nowak",
  "Fatma Ocal",
  "Van Phan",
  "Luis Fernando Plaz",
  "Natalie Polen",
  "Alicia Quezada",
  "Jessie Richardson",
  "Nimi Samocha",
  "Zach Schatz",
  "Tal Schwartz",
  "Pratik Shah",
  "Josh Shin",
  "Shawn Spears",
  "Nil Thacker",
  "Natasha Thapliyal",
  "Sabrina Unrein",
  "Brian Wagner",
  "Clinton Weber",
  "Gregory Wehmeier",
  "Michael Whelpley",
  "Alexander Williams",
  "Peter Wood",
  "Ryan Zell"
]

# MVP listed below. Note that it will not group for 6 people, and only groups into sets of 5 when easily divisible by 5, or for the remainders of the groups of 4. Still, it works!

=begin
def group_creator(list)
  total = list.length
  result = []
  holder = []

  if total < 3
    puts "Not enough people to make a group!"
  elsif total % 5 == 0
    result = list.each_slice(5).to_a
  elsif total % 4 == 0
    result = list.each_slice(5).to_a
  else
    roll_over = total % 4
    holder << list.pop(roll_over)
    result = list.each_slice(4).to_a
    if roll_over == 3
      result << holder
    elsif roll_over == 2
      result[0] << holder[0][0]
      result[1] << holder[0][1]
    else
      result[0] << holder[0]
    end
  end

  result.each {|group| puts "Group #{result.index(group)} has the following members: #{group}"}
end

group_creator(list_of_names)
=end

=begin

Questions on complexity:

If you run this program three times in a row, will the program give you three different outputs?

Yes it does; we wanted different outputs, we could call the following at the start of the method (included in the refactor):

list.shuffle!

Should the program store past outputs?

It could ...

If one person were to leave the cohort, how would the accountability groups change?

Hmm ...

How do you decide when you're done? You'll need to decide. This is much more challenging than you probably think, especially since there are no pre-written tests.

Whoo boy,

=end

# Refactored Code!
# Other things changed:
#

def group_creator(list)
  list.shuffle!
  total = list.length
  result = []
  holder = []

  if total < 3
    puts "Not enough people to make a group!"
  elsif total % 5 == 0
    result = list.each_slice(5).to_a
  elsif total % 4 == 0
    result = list.each_slice(5).to_a
  else
    roll_over = total % 4
    holder << list.pop(roll_over)
    result = list.each_slice(4).to_a
    if roll_over == 3
      result << holder
    elsif roll_over == 2
      result[0] << holder[0][0]
      result[1] << holder[0][1]
    else
      result[0] << holder[0]
    end
  end

  result.each {|group| puts "Group #{result.index(group)} has the following members: #{group}"}
end

group_creator(list_of_names)
