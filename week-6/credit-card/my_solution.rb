# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Fatma Ocal.
# I spent [3] hours on this challenge.

# Pseudocode

# Input: An Integer
# Output: True or False (depending on whether it is a valid CC number)
# Steps:
# Remove the spaces amongst the numbers.
# Check for valid input. 16 digit long and integer.
# Define insance variable

# Task 1:
# Convert the integer to an string, and Split the string then turn string into an array.
# Double the element if the index number is even.
# Task 2:
# Define accumulator with initial value of 0.
# Iterate through every element if it is single character, add that to the accumulator.
# If it is double characters, convert it to string, split the string and convert both of the characters back to integer, and then Iterate through sub array by adding all values.
#Task 3:
# modulus the sum with 10, if it equals to 0 then it is valid credit card.
# If it is false, return false.
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# (array.dup.to_s.gsub(" ", "").length)

#
# class CreditCard
#
#   def initialize(input)
#     raise ArgumentError.new('The card is not valid') unless (input.to_s.length == 16 ) && (input.is_a? Integer)
#     @card = input
#     @accumulator = 0
#   end
#
#   def double_even_index
#     array = @card.to_s.split(//)
#     array.map! {|character| character.to_i }
#     (0..15).each { |index| (array[index] =(array[index] * 2)) if index.even? }
#     return array
#   end
#
#   def sum_digits(array)
#     array.each do |digit|
#       if (digit < 10)
#         @accumulator += digit
#       else
#         digit.to_s.split(//).each {|x| @accumulator += x.to_i }
#       end
#     end
#   end
#
#   def check_card
#     sum_digits(double_even_index)
#     @accumulator % 10 == 0
#   end
# end

# cc=CreditCard.new(1234567891234567)
# p cc.check_card


# Refactored Solution
=begin
class CreditCard

  def initialize(input)
    raise ArgumentError.new('The card is not valid') unless (input.to_s.length == 16 ) && (input.is_a? Integer)
    @card = input
   @accumulator = 0
  end

  def double_even_index
    array = integer_to_array(@card)
    array.map! {|character| character.to_i }
    (0..15).each { |index| array[index] *= 2 if index.even? }
    return array
  end

  def integer_to_array(integer)
    integer.to_s.split(//)
  end

  def sum_digits(array)
    array.each do |digit|
      if (digit < 10)
        @accumulator += digit
      else
        integer_to_array(digit).each {|x| @accumulator += x.to_i }
      end
    end
  end

def check_card
  sum_digits(double_even_index)
   @accumulator % 10 == 0
  end
end
=end

# Second Refactoring Attempt
# (introducing .inject to the party)

class CreditCard

  def initialize(input)
    unless (input.to_s.length == 16 ) && (input.is_a? Integer)
      raise ArgumentError.new('The number is not valid')
    end
    @card = input
  end

  def double_even_index
    array = integer_to_array(@card)
    array.map! {|character| character.to_i }
    (0..15).each { |index| array[index] *= 2 if index.even? }
    return array
  end

  def integer_to_array(integer)
    integer.to_s.split(//)
  end

  def sum_digits(array)
    array.inject(0) do |acc, x|
      if x < 10
        acc + x
      else
        acc + integer_to_array(x).inject(0) do |innner_acc, y|
          innner_acc + y.to_i
        end
      end
    end
  end

  def check_card
    sum_digits(double_even_index) % 10 == 0
  end

end


# Reflection

=begin

What was the most difficult part of this challenge for you and your pair?
-The hardest part, in my opinion, was when we were refactoring the code, and were trying to make use of the #inject method. We eventually called time after 2.5 hours, then I took a crack at it the next morning and figured it out. (see below for details on making #inject work)

What new methods did you find to help you when you refactored?
-As mentioned above, we eventually learned how to use #inject in the second round of refactoring. The trick that got it working was that it had to be called twice, nested in on itself, in order to iterate over the nested array.

What concepts or learnings were you able to solidify in this challenge?
-This was further practice on pairing itself: every time I work with a new partner, it's a challenge to get on-rhythm with their mode of communication.
-On the code end, we got into the nitty-grit of making a nested enumerable method call work.


=end