# Build a simple guessing game


# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer
# Output: Boolean vallue
# Steps:

=begin
Step 1. Initialize the class with an integer as its input and assign it to an instance variables called answer.
		Also create an empty instance variable "last_guess" to keep track of the last guess.
Step 2. Set up two instance methods #guess and # solved?
Step 3. For #guess take an integer as its input and call it guess.
		Return :high if the input > answer
		Return :low if the input < answer
		Return :correct if input == answer
Step 4. For #solved? no argument taken
		Check to see if the previous guess is equal to answer
		if yes return true.otherwise, return false.
=end


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#   	@answer = answer
#   	@last_guess = nil
#   	@last_result = nil
    
#   end

#   def guess(guess)
#   	@last_guess = guess
#   	if guess == @answer
#   		return :correct
#   	elsif guess > @answer
#   		return :high
#   	else
#   		return :low
#   	end
#   end

#   def solved?
#   	if @last_guess == @answer
#   		@last_result = true
#   		return true
#   	else
#   		@last_result = false
#   		return false
#   	end
#   end


# end

# game = GuessingGame.new(10)
# p "Does the game solved: #{game.solved?}"
# p "First guess 5: #{game.guess(5)}"
# p "Second guess 20: #{game.guess(20)}"
# p "Third guess 10: #{game.guess(10)}"
# p "Does the game solved: #{game.solved?}"


# Refactored Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
  	@last_guess = nil
  	@last_result = nil
    
  end

  def guess(guess)
  	@last_guess = guess
  	return :correct if guess == @answer
  	return :high if guess > @answer
  	:low
  end

  def solved?
  	@last_guess == @answer ? true : false
  end


end

game = GuessingGame.new(10)
p "Does the game solved: #{game.solved?}"
p "First guess 5: #{game.guess(5)}"
p "Does the game solved: #{game.solved?}"
p "Second guess 20: #{game.guess(20)}"
p "Does the game solved: #{game.solved?}"
p "Third guess 10: #{game.guess(10)}"
p "Does the game solved: #{game.solved?}"



# Reflection

=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables stored data that are available for instance methods to access. It keep tracks of the current state of the instance object.
Meanwhile, instance methods provided a way to make changes on the instance variables hence change its current state. To me, the methods act on the 
instace variables is the cause, which affect the instance object of its class to change its current state. Which I think the "cause and effect"
idea makes objects more interactive and close to real-life.


When should you use instance variables? What do they do for you?

When you want to let its class instance methods to have access and make modification.
Instance variables are used to save neccessary data after its initialization. And it allows other instance methods to get access and make
changes if needed.


Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

I feel pretty comfortable with the flow control. This challenge doesn't have nested data structure so it's kind of straight forward.


Why do you think this code requires you to return symbols? What are the benefits of using symbols?

I think this exercise wants us to get a touch on symbols since we have been dealing with strings all along. 
The benefits of using symbols would be its uniqueness. Every smybol is unqiue. This ensure we assigning the correct object during comparison or assignment.
=end
