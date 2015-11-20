# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode

=begin
-Declare an new global variable, $fib_seq, initialized to [0,1], to represent Fibonacci sequence.
-Define a method fib_gen to generate Nth digit of Fib sequence:
  -Takes one argument, the digit to be generated
  -Check if array index is defined:
    -if defined, return the value
    -else calculate next value in sequence, add it to Fib sequence array
-Define is_fibonacci method
  -Takes one argument, the number to be checked (num)
  -Checks num if it is a valid integer
    IF so, continue method
    ELSE return False
  -Start counter at 0
Loop:
  Compare num versus $fib_seq[counter]
    IF =, return True
    ELSE IF num is <, return False
    ELSE
      increment counter,
      run fib_gen on new counter
      restart loop
=end


# Initial Solution

=begin

$fib_seq = [0, 1]

def fib_gen(index)
  if $fib_seq[index] != nil
    return $fib_seq[index]
  else
    $fib_seq[index] = ($fib_seq[index-1] + $fib_seq[index-2])
  end
end

def is_fibonacci?(num)
  if !(num.is_a? Integer)
    return false
  else
    counter = 0
    loop do
      if $fib_seq[counter] == num
        return true
      elsif $fib_seq[counter] > num
        return false
      else
        counter += 1
        fib_gen(counter)
      end
    end
  end
end

=end



# Refactored Solution

# I did not find any methods or other ways to refactor my code. Such shame!


$fib_seq = [0, 1]

def fib_gen(index)
  if $fib_seq[index] != nil
    return $fib_seq[index]
  else
    $fib_seq[index] = ($fib_seq[index-1] + $fib_seq[index-2])
  end
end

def is_fibonacci?(num)
  if !(num.is_a? Integer)
    return false
  else
    counter = 0
    loop do
      if $fib_seq[counter] == num
        return true
      elsif $fib_seq[counter] > num
        return false
      else
        counter += 1
        fib_gen(counter)
      end
    end
  end
end


# Reflection

=begin

What concepts did you review or learn in this challenge?

-In this challenge, I reviewed looping structures, and for the first time, used an infinite loop that only broke under the true/false conditions being acheived. I learned that explicitly returning a value is sufficient to break the loop; a specific "break" command is not needed.

What is still confusing to you about Ruby?

-Not so much a Ruby thing, but I do find it challenging to switch between languaguesl having just spend a week swimming in JavaScipt, it's a bit tricky learning to walk in Ruby land again.

What are you going to study to get more prepared for Phase 1?

-For Ruby, I plan on reading up on more of "The Well Grounded Rubyist", and then next week (or this week, if I have time), tackling the more difficult challenges for the list. If I'm feeling masochistic, I will try to finish Why's Guide.

=end
