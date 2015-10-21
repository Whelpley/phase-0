=begin

Reflection Time!


How do you define a local variable?

  A local variable is defined by designating a word for that value (which must be loewr-case, hae no special characters other than an underscore, and not one of Ruby's reserved words), and setting it equal to another value.

  Example:

  new_variable = 82334


How do you define a method?

  You define a method with the following format:

  def [name of method] ([optional parameters])
    [code that the method executes]
    end


What is the difference between a local variable and a method?

A local variable is an object that holds a value. A method is a means of changing a value.


How do you run a ruby program from the command line?

-Type "ruby [filename].rb"

How do you run an RSpec file from the command line?

  -Type "rspec "


What was confusing about this material? What made sense?

-This went over pretty clearly, once I started remembering the Ruby I learned for the DBC interview.

=end

puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Greetings and welcome, #{first_name} #{middle_name} #{last_name}!"

puts "Now, what is your favorite number?"

fave_number = gets.chomp.to_f
fave_number += 1
puts "Isn\'t #{fave_number} a better number?"