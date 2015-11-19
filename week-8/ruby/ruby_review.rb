# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode

=begin
-Create an new global variable, $fib_seq, an array initialized to [0,1], to represent Fibonacci sequence.
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

What is still confusing to you about Ruby?

What are you going to study to get more prepared for Phase 1?

=end
