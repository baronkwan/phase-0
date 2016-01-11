# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Number of sides of the die
# Output: When #sides is called, return the number of sides of the die. When #roll is called, return a random number between 1 and 6.
# Steps:

# 1. Create a Die Class, raise an ArgumentError if sides is smaller than 1.
# 2. Set up 2 Class methods for the Die Class, #sides and #roll
# 3. For #sides, have it return its sides value in integer type
# 4. For #roll, have it return a random number between 1 to 6

# 1. Initial Solution

# class Die
#   def initialize(sides)
#     if sides < 1
#     	raise ArgumentError.new("Sides of die should be larger than 1")
#     end
#     @sides = sides
#   end

#   def sides
#     @sides
#   end

#   def roll
#     rand(1..@sides)
#   end
# end



# 3. Refactored Solution

class Die

  attr_reader :sides

  def initialize(sides)
    raise ArgumentError.new("Sides of die should be larger than 1") if sides < 1
    @sides = sides
  end


  def roll
    rand(1..@sides)
  end
end





# 4. Reflection

# What is an ArgumentError and why would you use one?

# An ArgumentError tells the user there is something wrong on the argument part of the method call. We raise ArgumentError for notify users there are certain kinds of argument is not acceptable.


# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# In this challenge, I implemented Class concept as well as the class method #roll and attribute :sides. 


# What is a Ruby class?

# A Ruby class is the blueprint of its instance. It contains all the characteristic of its attribute and class methods. And once the instance is created, it automatically inherant its class features.


# Why would you use a Ruby class?

# In order to organize objects with similar characteristic. And once those objects are group within one class, we can encapsulate its class methods and allow its instance to call it without defining on every creation of instance.


# What is the difference between a local variable and an instance variable?

# A local variable lives in a limited scope. You cannot call it outside of its scope. While an instance variable is available across its class. Instance variable are preceded by the "@" followed by its name.


# Where can an instance variable be used?

# An instance variable is available across its class. It can be retrived within the class.

