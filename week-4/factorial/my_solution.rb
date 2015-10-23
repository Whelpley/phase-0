# Factorial

# I worked on this challenge [with: William Brinkert].


# Your Solution Below

def factorial(number)
  result = 1
  counter = number
  while counter > 0
    result *= counter
    counter -= 1
  end
  return result
end

=begin
Recursion solution:


def factorial(n)
  if n == 0
    return 1
  else
    answer = n * factorial(n-1)
    return answer
  end
end

=end