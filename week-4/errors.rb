# Analyze the Errors

# I worked on this challenge [by myself!].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#corrected!
cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#fixed!
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 171
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# That it was expecting an end somewhere, and got all the way to the bottom (line 171) without seeing it.
# 5. Where is the error in the code?
# Line 16
# 6. Why did the interpreter give you this error?
# There should be an extra "end" to close out the "while" loop.

# --- error -------------------------------------------------------

#fixed!
south_park = "still rocking it"

# 1. What is the line number where the error occurs?
# 38
# 2. What is the type of error message?
# Undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# it is a NameError
# 4. Where is the error in the code?
# Line 38
# 5. Why did the interpreter give you this error?
# There is nothing after the word "south_park" to indicate what it is or what it's there for. Correcting by assigning it a value.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 54
# 2. What is the type of error message?
# Undefined method
# 3. What additional information does the interpreter provide about this type of error?
# NoMethodErros
# 4. Where is the error in the code?
# Line 54
# 5. Why did the interpreter give you this error?
# cartman() has not been previously defined as a method

# --- error -------------------------------------------------------
#fixed!
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# 69
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# There is one argument entered when the method is called, but the method only takes zero arguments.
# 4. Where is the error in the code?
# 73
# 5. Why did the interpreter give you this error?
# There is one argument entered when the method is called, but the method only takes zero arguments.

# --- error -------------------------------------------------------
#fixed!
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Jews control the gold")

# 1. What is the line number where the error occurs?
# 88
# 2. What is the type of error message?
# Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# Reverse of last time: the method is expecting an argument, and got none.
# 4. Where is the error in the code?
# Line 92
# 5. Why did the interpreter give you this error?
# Reverse of last time: the method is expecting an argument, and got none.



# --- error -------------------------------------------------------
#fixed!
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Mom')

# 1. What is the line number where the error occurs?
# 109
# 2. What is the type of error message?
# Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 2), meaning the method expects 2 arguments, and only got one
# 4. Where is the error in the code?
# 113
# 5. Why did the interpreter give you this error?
# When cartmans_lie is called on 113, it should have 2 arguments.

# --- error -------------------------------------------------------
#fixed!
"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 128
# 2. What is the type of error message?
# String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# TypeError
# 4. Where is the error in the code?
# Line 128 - The string should be on the left if we want it to print 5 times.
# 5. Why did the interpreter give you this error?
# The string should be on the left if we want it to print 5 times.

# --- error -------------------------------------------------------
#fixed
amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# 143
# 2. What is the type of error message?
# divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# ZeroDivisionError
# 4. Where is the error in the code?
# at the "/"
# 5. Why did the interpreter give you this error?
# Dividing by zero will always break a program, unless otherwise accounted for.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 159
# 2. What is the type of error message?
# cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# There is a LoadError to the specified file path
# 4. Where is the error in the code?
# in the quotes, where is essay is specified
# 5. Why did the interpreter give you this error?
# There is not such essay in the specified file path.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

Reflection time!


Which error was the most difficult to read?
-The second one, because I was at first confused by the error occurring at the end of the file.

How did you figure out what the issue with the error was?
-In each case, I read through the error message, and checked out the code at the line referred to.

Were you able to determine why each error message happened based on the code?
-Yes!


When you encounter errors in your future code, what process will you follow to help you debug?
-I will certainly use rspec to help pick out errors bit-by-bit!

=end