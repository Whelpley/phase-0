# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: William Brinkert].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
=begin
P-Code

Declare SUM variable
Iterate array using Each
  SUM += element

=end

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution


=begin
def total(array)
  sum = 0
  array.each {|element| sum += element}
  sum
end
=end



# 3. total refactored solution

def total(array)
  array.inject(0) {|i,e| i+=e}
end




# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.

=begin
Assign variable named "sentence"
Build sentence string using inject
Capitalize sentence
Append a period
=end

# 5. sentence_maker initial solution (also the refactored solution)

def sentence_maker(word_array)
  sentence = word_array.inject(" "){|words,element| words+=element.to_s+" "}
  sentence.strip!.capitalize!
  sentence << "."
end


# 6. sentence_maker un-refactored solution

