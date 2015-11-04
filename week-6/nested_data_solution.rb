# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

p nested_data[:array][1][:hash]

# attempts:
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]



 number_array.map! do |x|
  if x.is_a? Integer
     x+5
  else
    x.map! do |i|
       i+5
    end
  end
end

p number_array




# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |x|
  if x.is_a? String
     x +"ly"
  else x.map! do |y|
    if y.is_a? String
      y+"ly"
    else y.map! do |z|
      z+"ly"
      end
    end
  end
  end
end

p startup_names

=begin

Reflection Time

What are some general rules you can apply to nested arrays?
-Access them by index in the following fashion:
array[outermost_index][middle_index][inner_index]
-Be careful about applying enumerable methods to them; they might not work as you think. Often, the method must be called in a nested fashion, in on itself.

What are some ways you can iterate over nested arrays?
-As mentioned above, you can call the iterating method over the array in a nested fashion, by calling the same method inside of that method to access any innner arrays.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
-On my end, I got more familiar with the #map method and how it's useful for creating an altered copy of an array, or with it #map! version, changing the contents of an array. The latter was useful in the bonus challenge because we wanted to replicate the array structure, but also add to each of its elements.

=end
