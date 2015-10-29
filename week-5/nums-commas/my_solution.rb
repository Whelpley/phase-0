# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

=begin
# 0. Pseudocode

# What is the input?
# - Any positive integer
# What is the output? (i.e. What should the code return?)
# -A string with commas inserted under the following rules:
# ---Every 3 spaces from the end of string,
# ---Only if not at the end of string
#(Sidenote: defining this output was/is a difficult step, for it is where the ruels for comma insertion start to get worked out.)
# What are the steps needed to solve the problem?

1)Convert integer to string
2)get length of string, case out to determine where to insert commas
  a) length <=3, nothing
  b) 3<length<=6, at [-4],
  c) 6<length<=9, at [-4], [-8]
  d) 9<length<=12, at [-4], [-8], [-12] ...
  e) ...
  PROBLEM - how to continue?
3) insert into that string by index

=end

# 1. Initial Solution
# As noted in the final Else clause, this can only handle integers up to 12 digits, would need to specifically add the cabability for higher numbers. As such, not a satisfying solution, even though it passes the test. Will try to address in the refactoring.

=begin

def separate_comma(int)
  result = int.to_s
  length = result.length

  if length <= 3
    result
  elsif (length > 3) && (length <= 6)
    result.insert(-4,",")
  elsif (length > 6) && (length <= 9)
    result.insert(-4,",")
    result.insert(-8,",")
  elsif (length > 9) && (length <= 12)
    result.insert(-4,",")
    result.insert(-8,",")
    result.insert(-12,",")
  else
    p "This solution can only handle integers of 12 digits or less."
  end

end

=end



# 2. Refactored Solution
=begin

Here I am attempting to make use of the Enumerable method .each_slice. As of pseudocoding, was having problems with the step of reforming the array after calling each_slice. Solved that when I realized that .each_slice returns an enumerable, which cannot be operated on like other objects (don't fully understand why ...). Sidestepped this by funneling the each_slice results into a new array.

New Pseudocode:
-convert integer to string
-split string into array of one character per element
-reverse string
-Call each_slice to add a comma after every three elements, the put the results of each slice into a new array.
-flatten the array of arrays into one-dimensional array
-join into a single string
-chop off that last comma
-reverse again to correct order

=end

def separate_comma(int)

  result = []

  int.to_s.split("").reverse.each_slice(3) do |slice|
    slice << ","
    result << slice
  end

  p result.flatten.join.chop.reverse

end



# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?

-First, I thought about the rules for comma-insertion into digits, and realized there was a regularity to it according to the number of digits in the integer. I thought that if I could break the input down and .insert by index, I could hit on a full solution - unfortunately, I only came up with one that had to specifically account for the number of digits (see Initial code above).

Was your pseudocode effective in helping you build a successful initial solution?

-Yes, mostly - it helped in getting the logic down before coding it, but was not initially able to solve the problem fully.

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

-Reformated from my comment above the Refactored solution: I used the Enumerable method .each_slice. As of pseudocoding, was having problems with the step of reforming the array after calling each_slice, getting results of (nil) after trying to use the result in further methods. Solved that when I realized that .each_slice returns an enumerable, which cannot be operated on like other objects (don't fully understand why ...). Sidestepped this by funneling the each_slice results into a new array, then operating on that array.


How did you initially iterate through the data structure?

-Initially, with a long if/elsif/else chain based on the number of digits in the original integer, inserting commas by index.

Do you feel your refactored solution is more readable than your initial solution? Why?

-I think the refactored version might be more difficult to understand, depending on your knowledge of what .each_slice does. The refactored version is more elegant, but also more complicated.

=end

