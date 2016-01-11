# Initial Solution

# def create_group(array)
# 	randomized_array = array.shuffle
# 	grouped = randomized_array.each_slice(5).to_a
# 	counter = 0
# 	while counter < grouped.length # For remaining names we donot want to put "-1" here.
# 		puts "Number #{counter + 1} group: #{grouped[counter]}."
# 		counter += 1
# 	end
# end


# Refactored Solution

def create_group(array)
	randomized_group = array.shuffle.each_slice(5).to_a # Randomized the list and group every 5 people into one group. Remaining people will be grouped into one group.
	counter = 0
	while counter < randomized_group.length # For remaining people we do not put "-1" here
		puts "Group number #{counter + 1}: #{randomized_group[counter]}."
		counter += 1
	end
end

list_of_name = ["Peter", "Eric", "David", "Mary", "Derron", "Lydia", "Michelle", "Patrick", "Quinn", "Cody", "Michael", "Christy", "Amy", "Woody"]

puts create_group(list_of_name)


# Reflection


# What was the most interesting and most difficult part of this challenge?

# This challenge is easier than I expected. The most interesting part of this challenge would be applying the new method I learned from the previous challenge.


# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I am feeling more comfortable writing pseudocode now since I did it everytime before I start to actually write codes. It helps me to know where I am at within the question and what should I do in order to get myself going.


# Was your approach for automating this task a good solution? What could have made it even better?

# So the method I provided above will take an array and randomize it then print out an array notifying which 5 members will be in the same group. To improve and make complete of this challenge, adding some functions for adding/deleting/Updating people from or out of the group.


# What data structure did you decide to store the accountability groups in and why?

# I used Array to store the accountability groups. It is the most straight forward data structure to less. Make things easier.


# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# I learned I should reduce the use of local variable. I feel like if a program have too many local variable will make the whole program hard to read from the view of a reader.


