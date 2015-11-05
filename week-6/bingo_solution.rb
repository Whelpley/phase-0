# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  -call method with no arguments
  -generate array of strings, one for each character of BINGO
  -generate random number in 0..4 range, use it to access that index value of BINGO array
  -generate random number in 1..100 range
  -combine previous two results into one string as result of method call

# Check the called column for the number called.
In: call
Out: if no match return "not found", if match found return index location of match
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
-Ignoring this one in favor of

# Display the board to the console (prettily)
  #fill in the outline here
=end

# Initial Solution
# Notes: In this version, #check and #replace are separate methods, will merge in the refactored version.
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
      puts "#{called} not found on board. Pray harder, grandma!"
    else
      puts "#{called} is a winner! Match found at #{location}"
      @bingo_board[location[0]][location[1]] = 'X'
    end
    display
  end

  def display
    @bingo_board.each {|row| p row}
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
#-running multiple times to check that @bingo_board saves the results of previous calls


20.times {|x| new_game.check(new_game.call)}



#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
What are the benefits of using a class for this challenge?
How can you access coordinates in a nested array?
What methods did you use to access and modify the array?
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
How did you determine what should be an instance variable versus a local variable?
What do you feel is most improved in your refactored solution?

  =end
