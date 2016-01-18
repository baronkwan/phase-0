# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.


# Release 0: Pseudocode
# Outline:
  # Step 1. Create #call to generate letter and number.
  #           Split "BINGO" by char and convert them into an array.
  #           Use #rand to generate a number within the range 0 to 100.
  #           Save both letter and number into a new array
  # Step 2. Create #check to check if there is a match with our guess both letter and number.
  #           Iterate through the bingo_board
  #             For each sub_array check if there is a match
  #               IF Yes, replace the original number to "X"
  #               IF No, leave it


# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letters = "BINGO".split(//)
    @number = rand(0..100)
    @calling_array = [@letters.sample, @number]
  end

  def check
    @bingo_board.each do |subset|
      subset.each_with_index do |num, index|
        if num == @calling_array[1] && index == @letters.rindex(@calling_array[0])
          case index
          when 0              # When it hits correct number in "B" Col
            subset[0] = 'X'
          when 1              # When it hits correct number in "I" Col
            subset[1] = 'X'
          when 2              # When it hits correct number in "N" Col
            subset[2] = 'X'
          when 3              # When it hits correct number in "G" Col
            subset[3] = 'X'
          when 4              # When it hits correct number in "O" Col
            subset[4] = 'X'
          end
        end
      end
    end
  end

  def play_game
    puts
    puts "Welcome to the Bingo Board!"
    puts "Guessing..."
    puts "The Guess is #{self.call}"
    self.check
    puts "Here is the result: "
    puts "--------------------"
    @bingo_board.each { |subset| p subset;}
    puts
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]


new_game = BingoBoard.new(board)
game_playing = true

while game_playing
  new_game.play_game
  puts "End of the game. Play again? ( Y / N )"
  while true
    response = gets.chomp.downcase
    if response == ("n")
      game_playing = false
      puts "See you!"
      break
    elsif response == ("y")
      game_playing = true
      break
    else
      puts "Invalid input, please try again."
    end
  end
end

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# To pseudocode this challenge is not too difficult. The only thing leave to be mindful is how
# to iterate through a nested array and achieve the our objective. I like to put some key words 
# such as "IF" so that I can give my actual code a framework before starting to code.


# What are the benefits of using a class for this challenge?

# By using a class we can have a set instance variables which can be pass to different methods
# within the class. Also we can organize objects with similar characteristic into a class to reduce
# the amount of codes. Keeping things DRY.


# How can you access coordinates in a nested array?

# So each subset of the board array represent one column. After the first iteration, I am with
# the big array and able to get access to those "B", "I", "N", "G", "O" columns array. Then I started
# another iteration on each subset's individual item, says, number. With the #each_with_index I am able
# to keep track the index of the item while the loop.


# What methods did you use to access and modify the array?

# With the #each_with_index I am able to keep track the index of the item while the loop.
# Hence I will be able to check if my pair of guess match with the random call.


# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# The #rindex(obj). It return the index if the receiver contains item that equal to the parameter obj.


# How did you determine what should be an instance variable versus a local variable?

# A local variable doesn't need to be call again throughout the class. While items that need to
# be call throughout the class by its different instance methods should be an instance variable.


# What do you feel is most improved in your refactored solution?

# I created a while loop to let player to continue the bingo game if they want to.


