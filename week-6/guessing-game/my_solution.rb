# Build a simple guessing game


# I worked on this challenge [by myself ].
# I spent [1.5] hours on this challenge.

# Pseudocode
=begin
# Input/
# Output:

initialize:
In: an integer
Out: integer stored in class variable

guess:
In: an integer
Out: Symbols for high/low/correct, indicative of relation of the guess to the answer

solved?:
In: nothing (just invoke the method)
Out: T/F

# Steps:

initialize:
-check for correct input
-set the class variable for correct answer
-set a class variable for whether a correct guess has been made (initialize to False)

guess:
-case out the input, return high/low/correct symbols, and adjust the most_recent variable to T/F

solved?
-check if most_recent is T or F

=end



# Initial Solution

=begin

class GuessingGame

  def initialize(answer)
    unless answer.is_a? Integer
      raise ArgumentError.new("Only integers are allowed.")
    end
    @answer = answer
    @most_recent = false
  end

  def guess(int)
    if int > @answer
      @most_recent = false
      :high
    elsif int < @answer
      @most_recent = false
      :low
    elsif int == @answer
      @most_recent = true
      :correct
    else
      puts "something is wrong"
    end
  end

  def solved?
    @most_recent
  end

end

=end


# Refactored Solution
# -Let's try it with the ternary operator!
# test-expression ? if-true-expression : if-false-expression



class GuessingGame

  def initialize(answer)
    unless answer.is_a? Integer
      raise ArgumentError.new("Only integers are allowed.")
    end
    @answer = answer
    @most_recent = false
  end

  def guess(int)
#set most_recent to T/F
    @most_recent = (int == @answer)
# nested ternary operator to return correct/high/low symbols
    int == @answer ? :correct : int > @answer ? :high : :low
  end

  def solved?
    @most_recent
  end

end






# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

-Let's use the real-world example of a car as an object, and the lights as an instance variable, and ignition as an instance method. Every car object that is produced is comes with lights, which may be set on/off, and the lights that are created with an individual car stay with that car. The method "ignition" is an operation that you may perform on all cars, and is a standard operation that all cars can do.


When should you use instance variables? What do they do for you?

-They are useful when you want an obhect to always have a particular variable attached to it, which can be accessed anywhere that object is used. They are useful in that they allow variables to be used outside the scope of local variables, which are locked into the code block where they are created.


Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

-In general terms, mastering flow control is about separating out your operation step-by-step, identifying points where a choice could be made, and accounting for the possibilities presented by that choice. In specific terms, you need to be exact in how you use the various flow-control techniques - even a minor typo or a mis-accounted case can derail the flow.


Why do you think this code requires you to return symbols? What are the benefits of using symbols?

-I am not entirely sure, but there could be future versions that log the number of high/low/correct answers, and symbols would be useful for creating a hash of that log. Symbols are unique and immutable, which will summon an error if you try to change it later - I'm not sure how that applies here, though.

=end
