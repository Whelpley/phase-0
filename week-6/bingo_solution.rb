# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [6] hours on this challenge.

=begin

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  -zero arguments for this method
  -generate array of strings, one for each character of BINGO
  -generate random number in 0..4 range, use it to access that index value of BINGO array
  -generate random number in 1..100 range
  -combine previous two results into one string as result of method call

# Check the called column for the number called.
In: call
Out: if no match return "not found" message, if match found return index location of match
-separate letter from input call (pop off first character of string if possible, otherwise split string first)
-separate
-find index # of the letter from the call
-iterate over top-level array
   -in each subarray, check at index

# If the number is in the column, replace with an 'x'
In: location of match as 2 element array: [row_index,col_index]
Out: new board, with match location replaced by 'X'
-access @bingo_board my index from location input, replace with an X

# Display a column to the console
-Ach ... this was not mentioned in the Canvas page for the assignment, and is not necessary for the rest of the process, so I am skipping this step, and will return if I have the time.

# Display the board to the console (prettily)
In: the current state of the board
Out: an attractive display for the board
-zero arguments accepted
-iterate over current board, print rows one by one

=end

# Initial Solution

=begin

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter_array = %w{ B I N G O }
  end

  def call
    @letter_array[rand(4)] + rand(1..100).to_s
  end

  def check(called)
    letter = called[0]
    column = @letter_array.index(letter)
    number = called[1..-1].to_i
    location = Array.new(2)
    @bingo_board.each do |sub_array|
      if number == sub_array[column]
        location[0] = @bingo_board.index(sub_array)
        location[1] = column
      end
    end
    if location[0] == nil
      puts "Called number not found on board. Pray harder, grandma!"
    else
      puts "#{called} is a winner! Match found at #{location}"
    end
    return location
  end

  def replace(match)
    if match[0] == nil
      puts "Not a match"
    else
      @bingo_board[match[0]][match[1]] = 'X'
    end
    p @bingo_board
  end

  def display
    @bingo_board.each {|row| p row}
  end

end

=end


# Refactored Solution
# 1) merging #check and #replace methods
# 2) calling #display at the end of #check
# 3) setting attr_reader for class variables (not really sure if this helps or just clutters here...)
# 4) trying Enumerator#find instead of #each ... nope, not appropriate - needs more code
# 4.5) trying #find_index for the nested array search - that works!
# 5) changed name of variable array "location" to two variables - match_row and match_column
# 6) compressed out variables "letter", "column"
# 7) improve #display by printing row of BINGO letters at top ... returning to make it more pretty if I have time ...
# 8) #generate_board method created
# 9) finally, removed a sneaky bug - in #check, the .each loop sent the wrong value to match_row, leading to the wrong entry getting the "X"


class BingoBoard

  attr_reader :bingo_board, :letter_array

  def initialize(board)
    @bingo_board = board
    @letter_array = %w{ B I N G O }
  end

  def call
    @letter_array[rand(4)] + rand(1..100).to_s
  end

  def check(called)
    number = called[1..-1].to_i
    match_row = nil
    match_column = @letter_array.index(called[0])
    @bingo_board.each do |sub_array|
      match_row = @bingo_board.find_index(sub_array) if number == sub_array[match_column]
    end
    if match_row == nil
      puts "#{called} not found on board. Pray harder, grandma!"
    else
      puts "#{called} is a winner!"
      @bingo_board[match_row][match_column] = 'X'
    end
    display
  end

  def display
    p @letter_array
    @bingo_board.each {|row| p row}
  end

  def generate_board
    @bingo_board.each do |sub_array|
      (0..4).each do |x|
        sub_array[x]=rand((1+x*15)..(x+1)*15)
      end
    end
    @bingo_board[2][2] = 'X'
    puts "New board in play!"
    display
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

=begin
Driver code for initial solution:

new_game.replace(new_game.check(new_game.call))

new_game.display

=end

#Driver code for refactored solution:

#-Ran multiple times to check that @bingo_board saves the results of previous calls
# 20.times {|x| new_game.check(new_game.call)}

new_game.check(new_game.call)

new_game.generate_board

5.times {|x| new_game.check(new_game.call)}



#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

-Very difficult, many steps and possibilties to think out. I think I'm developing a better style as I go along, but it may not be the most readable to others. (FYI, I left it untouched from the stage I jumped off to coding, did not update for the refactoring)

What are the benefits of using a class for this challenge?

-The class can wrap up the class variables that are accessed from method to method, and the methods can each call each other, which I found very tidy and convenient.

How can you access coordinates in a nested array?

-You can access an individual item by index by indicating the highest-level index first, going down (eg multi_array[outer_index][middle_index][inner_index])


What methods did you use to access and modify the array?

-I used #each to start the iteration, then #find_index in each sub-array to find the match for a call.


Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

-I used #find_index, which returns the index value of an item in an array. You invoke it with the following syntax:
array.index(item_searched)


How did you determine what should be an instance variable versus a local variable?

-Use a local variable if it will only be used within one method, use the instance if it will be called across multiple methods in a class.


What do you feel is most improved in your refactored solution?

-I think the biggest step was catching the bug from the original version, which caused an X-out of the wrong item on the board. I had mixed up the code to cause the match_row to be set to the column of the match, instead of the row. Noticed this after testing the code repeatedly with x.times

=end


