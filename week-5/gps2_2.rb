#initial solution

#Create a new list

def new_list
  Hash.new
end

#Add an item with a quantity to the list

def add_item(hash, item, quantity)
  hash[item] = quantity
end

#Remove an item from the list

def remove_item (hash, item)
  hash.delete(item)
end

#Update quantities for items in your list

def update_list(hash, item, quantity)
  hash[item]= quantity
end

#Print the list (Consider how to make it look nice!)
# Commented-out in favor of the refactored version

=begin
def print_list(hash)
  puts hash
end
=end

# refactored methods - only changed one:

def print_list(hash)
  hash.each do |key, value|
    puts "You need to get #{value} of #{key}!"
  end
end


# method calls to test

grocery_list = new_list

add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)

puts grocery_list

remove_item(grocery_list, "tomatoes")

puts grocery_list

update_list(grocery_list, "ice cream", 5)

puts grocery_list

print_list(grocery_list)


=begin

Reflection time!

What did you learn about pseudocode from working on this challenge?

-I learned that it sometimes can be the most difficult part, if two people have different expectations of what the pseudocode is suppoed to be: my pair and I spent about the first 15 minutes discussing what was expected in the pseudocode, and eventually we decided just to skip to the actual coding. We did recognize that for a more complicated assignment, that would not be as wise a decision.


What are the tradeoffs of using Arrays and Hashes for this challenge?

-We didn't even consider arrays for this challenge, as Hashes seemed much more appropriate for a data set that has a paired set of values (item & quantity).


What does a method return?

-Whatever the last evaluated expression in the method is.


What kind of things can you pass into methods as arguments?

-Anything you want! (Any variable, at least). In our case, we passed in a hash, a string, and an integer to most of the methods.


How can you pass information between methods?

-You must be careful to not use local variables delcared inside of the method calls. Any information you want to be passed must be "caught" in a variable as the method spits it out, and then passed in to the next method call. In this assigment, we accomplished this by declaring "grocery_list" outside of the method calls, and using that variable to enter back into further method calls.


What concepts were solidified in this challenge, and what concepts are still confusing?

-This exercise did solifify the passing of info between methods, as noted above. This also demonstrated that I need to work on my communication skills with regards to pseudocode, as two people's expectations on it can differ & lead to confusion.

=end
