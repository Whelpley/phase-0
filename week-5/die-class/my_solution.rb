# Die Class 1: Numeric

# I worked on this challenge [by myself!]

# I spent [1.5] hours on this challenge.

# 0. Pseudocode
=begin
# Input:
# Output:
-Depends on the methods being called.
Initialize: takes the # of sides, return the new Die object
Sides: takes no arguments, returns the # of sides
Roll: takes no arguments, returns a random integer between 1 and the # of sides
# Steps:
-I just jumped into the code for this one; each method was very simple

=end

# 1. Initial Solution

class Die
  def initialize(sides)
    unless (sides >= 1) && (sides.is_a? Integer)
      raise ArgumentError.new("Only integers of 1 or higher are allowed")
    end
    @num_sides = sides
  end

  def sides
    @num_sides
  end

  def roll
    rand(1..@num_sides)
  end
end


# 3. Refactored Solution
# see above, nothing to refactor down




# 4. Reflection

=begin


What is an ArgumentError and why would you use one?

-This is a special clause you can throw into a method that will shut down the method's operations and return an error message under a specified condition. They are useful to place in the initialize method of a class to filter out inapproriate starting arguments.


What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

-Rand was new for me, and the challenge there was learning to specify the range of the method (eg rand{1..6)) to exclude 0 from the range of results, which would have happened with rand(0)


What is a Ruby class?

(Oh boy, this is one of those things that I feel that I get, but it's still hard to explain in words. Here goes:)
-A class is an object, but it is also a tent under which other objects are instances of & share available methods.


Why would you use a Ruby class?

-They are useful when you anticipate the creation of multiple objects sharing certain attributes. When any new object in a class is created, it comes with a set of pre-loaded methods available to it.


What is the difference between a local variable and an instance variable?
Where can an instance variable be used?

While a local variable is available within the scope of where it is defined, an instance variable may be defined within a class, and then later referenced outside of the class definition, as long as it is used in an object that is a member of that class.

=end
