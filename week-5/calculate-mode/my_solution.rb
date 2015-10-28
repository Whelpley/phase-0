
# I worked on this challenge [with: Pratik Shah]

# I spent [2.0] hours on this challenge. (1.25 hours actively pairing)

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
=begin
1. create an empty hash preset to 0
2. iterate over the array and collect it into a new hash.
key is each entry in array and then value in new hash is frequency
3. create result array and then iterate the hash
set locale variable for highest frequency and set it to zero
Case 1 - iterate throught he hash IF value is < highest do nothing
Case 2 - IF value is = to highest freq push the key into result array
Case 3 - IF value is greater than highest freq number. clear result array and then push key into the result array.

Version 2 of P-code:
set variable
copy array that is passed in
sort array
create new empty hash
iterate through (copy of) array,
case 1 - if element = hash Key, add +1 to value of hash
case 2 - else: create new hash key (using element as key), set val = 1,
create new result array
iterate through hash,
check for most frequent values & push into array
case 1 -
case 2 -

=end

# 1. Initial Solution

=begin
def mode(array)
  sort_hash = Hash.new(0)

  array.each do |element|
    sort_hash[element] += 1
  end

  result = []
  highest_freq = 0
  p sort_hash
  sort_hash.each_key do |key|
    if (sort_hash[key] < highest_freq)
    elsif (sort_hash[key] == highest_freq)
      result << key
    else (sort_hash[key] > highest_freq)
      result.clear
      result << key
      highest_freq = sort_hash[key]
    end
  end

  return result

end

=end


# 3. Refactored Solution

def mode(array)
  sort_hash = Hash.new(0)

  array.each do |element|
    sort_hash[element] += 1
  end

  highest_freq = sort_hash.values.max
  result = sort_hash.select { |k, v| v == highest_freq}.keys

end

# 4. Reflection

=begin

Which data structure did you and your pair decide to implement and why?

-We created a hash out of the array (setting the key = the element and the value = its frequency), then sorted out an array of keys of the highest-frequency values from that hash.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

The pseudocode process is getting better each time, and I did feel like we were able to get a clear version together.

What issues/successes did you run into when translating your pseudocode to code?

There was an initial challenge in translating the case statement from the pseudocode to create the final array; the first steps of the pseudocode were much easier to implement.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

The initial iteration on the hash was does with .each_key, which required a clunky if/elseif/else conditional; our research turned up the methods .values , .keys, .max, and .select , from which we were able (after much tweaking) to craft a workable bit of code.

=end