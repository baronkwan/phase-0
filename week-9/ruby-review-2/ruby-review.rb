# PezDispenser Class from User Stories

# I worked on this challenge [by myself].
# I spent [0.5] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode

# 1. Create a Class PezDispenser which take an array as its only argument.
# 2. Create 4 instance methods
# 	-	pez_count which will return the number of pezs inside the PezDispenser.
# 	-	get_pez will get you the pez on top of the current order of pezs.
# 	-	add_pez with new flavors as its only argument which will add that flavors into the current array.
# 	-	see_all_pez which will return an array with the current order of pezs inside PezDispenser.


# Initial Solution

class PezDispenser

def initialize(array)
	@array = array
end

def pez_count
	@array.length
end

def get_pez
	@array.shift
end

def add_pez(flavor)
	@array.push(flavor)
end

def see_all_pez
	@array
end

end

# Refactored Solution

class PezDispenser

def initialize(array)
	@array = array
end

def pez_count
	@array.length
end

def get_pez
	@array.shift
end

def add_pez(flavor)
	@array.push(flavor)
end

def see_all_pez
	@array
end

end




# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection

# What concepts did you review or learn in this challenge?

# This challenge is about class creation and how to manipulate class variables data so that
# it will be able to use them and pass them across its instance methods.


# What is still confusing to you about Ruby?

# The Refactoring part. Not sure if there is any way to condense it even further.


# What are you going to study to get more prepared for Phase 1?

# About Class creation and how to efficiently manipulate class variables across methods.

