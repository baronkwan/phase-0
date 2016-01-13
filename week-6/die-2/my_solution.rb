# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: An array of strings.
# Output: An instance of the Die class
# Steps: 
# 1. Set rules for when will raise the ArgumentError
# => Check if the input is an array and if there is anything insides the array.
# 2. Defind its instance method #sides and #roll
# => For #sides, call #length on @labels
# => For #roll, call #sample on the @labels for the random item from the input array.


# Initial Solution

# class Die
#   def initialize(labels)
#   	if labels.empty? || labels.class != Array
#   		raise ArgumentError.new("Please input an array of strings as its input.")
#   	else
#   		@labels = labels
#   	end
#   end

#   def sides
#   	@labels.length
#   end

#   def roll
#   	@labels.sample
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new("Please input an array of strings.") if labels.empty? || labels.class != Array
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample
  end
end

# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# The main differences would be its requirement of the input changed from an Integer to an array. In order to raise ArgumentError correctly I needed to make a more descrptive condition.


# What does this exercise teach you about making code that is easily changeable or modifiable?

# This exercise require me to create a class with inputs for initializing its instance as well as creating its instance methods.


# What new methods did you learn when working on this challenge, if any?

# I looked up from Ruby docs and get to know the #sample for randomly picking one element from an array.


# What concepts about classes were you able to solidify in this challenge?

# The concepts of Ruby's class. How to construct instance methods and how to store data into the instance variables. Last but not least, of how to retrieve information between methods.

