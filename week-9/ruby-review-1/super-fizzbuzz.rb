# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

=begin

-Define new method, which accepts one argument
-Check argument to see IF it is an array
  raise argument error if not
-Make copy of array
-Iterate over array
  -IF element is evenly divisible by 5 and 3, return "Fizzbuzz"
  -ELSIF evenly divisible by 5, return "Buzz"
  -ELSIF evenly divisible by 3, return "Fizz"
  -ELSE return the element

=end



# Initial Solution

def super_fizzbuzz(array)

  if !(array.is_a? Array)
    raise Argumenterror, "That is not a valid array"
  end

  result = array.map do |x|
    if (x % 5 == 0) && (x % 3 == 0)
      x = "FizzBuzz"
    elsif (x % 5 == 0)
      x = "Buzz"
    elsif (x % 3 == 0)
      x = "Fizz"
    else
      x = x
    end
  end

  return result

end



# Refactored Solution


# Have found nothing to refactor, much shame



# Reflection

# -This one was much easier that I expected; I may return at the end of the weekend to take on a harder challenge.