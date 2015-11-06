# Your Names
# 1) Michael Whelpley
# 2) Darius Atmar

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size

  total_to_make = order_quantity/serving_size

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{total_to_make} of #{item_to_make}"
  when 6
    #one cake one cookie when ordering pie
    return "Calculations complete: Make #{total_to_make} of #{item_to_make}. You can still make 1 cake and 1 cookie."
  when 5
    #one cake when pie ordered
    return "Calculations complete: Make #{total_to_make} of #{item_to_make}. You can still make 1 cake."
  else
    # 4 cookies
    return "Calculations complete: Make #{total_to_make} of #{item_to_make}. You can still make #{serving_size_mod} cookies."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 13)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin


What did you learn about making code readable by working on this challenge?

Oh my, we learned that reabale code is very important if you want others to be able to understand what you have created. Specifically, it helps to give variable names that are both descriptive and accurate.

Did you learn any new methods? What did you learn about them?

We did not implement any new methods in the refactoring, but in the original code, the method #values_at? returns an array containing the values at a specified key (or multiple specified keys).

What did you learn about accessing data in hashes?

There are multiple ways to get at the values in a hash, depending on what data you have to start with, and what information you wish to access. They are very flexible and useful data structures.

What concepts were solidified when working through this challenge?

For me, this challenge refinforced the process by which a piece of code is understood - get an idea of what is going in, what's going out, and then figure out what's happening inside. Playing around with the test code helped here.

=end
