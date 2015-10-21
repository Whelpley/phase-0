# Leap Years

# I worked on this challenge [with: Shea Munion].


# Your Solution Below

def leap_year?(year)
  if (year % 100 == 0) && !(year % 400 == 0)
    return false
  elsif (year % 4 == 0)
    return true
  else
    return false
  end
end