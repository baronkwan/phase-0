# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer
# What is the output? A string
# What are the steps needed to solve the problem?

# 1. First split and transform the integer into a string array. Reverse the array.
# 2. Group every 3 digit and slice the array.
# 3. Add commas between each slice and then reverse it back to the original order.


# 1. Initial Solution

# def separate_comma(integer)
# 	if integer < 1000
# 		return integer.to_s
# 	else
# 		integer_split_array = integer.to_s.split("").reverse
# 		slicing_array = integer_split_array.each_slice(3).collect{|array| array.join}
# 		slicing_array.join(",").reverse
# 	end
# end


# 2. Refactored Solution

def separate_comma(integer)
	return integer.to_s if integer < 1000
	integer.to_s.split("").reverse.each_slice(3).collect(&:join).join(",").reverse
end


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

# My idea is to convert to input integer into string type then separate every 3 elements with a comma.
# At first, I was trying to make a recusive method with both integer and modular division. But that's just too much work.


# # Was your pseudocode effective in helping you build a successful initial solution?

# Yes it gave me the general idea on what method I should take and what result I should expect for.


# # What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# I used the #collect with a block. The #collect is kind of abstract and might need more attention when use. It integrated multiple steps into one. Hence shorten the code of mine.


# # How did you initially iterate through the data structure?

# I initially use the #each_index method to try to iterate through the array and add a comma after an individual object within the array which will be divisible by 3. However, I noticed that everytime I add a comma to it, the index of next object will changes. That took a long time to found the reason why my code didnt work.


# # Do you feel your refactored solution is more readable than your initial solution? Why?

# I feel that the refactored solution look much more cleaner and more readable than the initial solution. It is like a plain english sentence to me in some case.



