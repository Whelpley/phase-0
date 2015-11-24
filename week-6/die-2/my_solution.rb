# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [0.5] hours on this challenge.

# Pseudocode

# Input:
# -An array
# Output:
# -from method Sides: an array of the possible sides
# -from method Roll: one random selection from Sides
# Steps:
=begin
1) Initial checks - IF input is not an array OR array is empty, return and argument error
2) If passed, initialize the selection of sides to be the array passed in
3) for Sides, return selection of sides
4) for Roll, randomly access the index of the selection of sides

=end


# Initial Solution

class Die
  def initialize(labels)
    unless !(labels.empty?) && (labels.is_a? Array)
      raise ArgumentError.new("Only non-empty arrays are allowed to be input.")
    end
    @label_selection = labels
  end

  def sides
    @label_selection.length
  end

  def roll
    @label_selection[rand(sides)]
  end
end



# Refactored Solution

# I feel pretty good about my initial solution.






# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

-The basic logic of this was the same, the difference being that the selection of sides is contained in an array, rather than a range of integers. The Roll method requires acessing a random number as index in the possible results array.

What does this exercise teach you about making code that is easily changeable or modifiable?

-It's good to have code that you can re-use and update easily; this exercise points out the value of clearly structuring your code and using descriptive variable names.


What new methods did you learn when working on this challenge, if any?

-Not any this time!


What concepts about classes were you able to solidify in this challenge?

-I learned how the nesting structure of arrays allows for a random access by index.


=end