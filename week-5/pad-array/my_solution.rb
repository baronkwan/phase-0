# Pad an Array

# I worked on this challenge [with: Emmet/esusslin]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? 
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# For non-destructive
# 	Create an empty array so we don't mess with the original array, new_array = []
# 	IF min_size <= original_array.length
# 	 	RETURN original_array
# 	 ELSE
# 		insert each individual element from the original_array to the new_array
# 		WHILE min_size > original_array.length
# 			insert the string value into the new_array
# 		end
# 	end
# 	RETURN new_array

# puts pad([1,2,3],5) #==>[1,2,3, nil, nil]
# puts original_array #==>[1,2,3]


	
# For destructive
# 	Keep original_array throughout the method so that we make changes on the original_array
# 	IF min_size <= original_array.length
# 	 	RETURN original_array
# 	ELSE
#		WHILE min_size > original_array.length
# 			insert the value into the original_array
# 		end
# 	end
# 	RETURN original_array

# puts pad!([1,2,3],5) #==>[1,2,3, nil, nil]
# puts original_array #==>[1,2,3, nil, nil]



# 1. Initial Solution

# def pad!(array, min_size, value = nil) #destructive
#  if array.length >= min_size
#      return array

#  else
#      while min_size > array.length
#          array.push(value)
     
#     end
#   end
#     array
# end


# def pad(array, min_size, value = nil) #non-destructive

#     new_array = array.dup

#     if new_array.length >= min_size
#          return new_array

#      else


#          while min_size > new_array.length
#              new_array.push(value)

#          end    
#     end

#      return new_array

# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  # Your code here
  return array if min_size <= array.length
  while min_size > array.length
  	array.push(value)
  end
  array
end


def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = array.dup
  return new_array if min_size <= new_array.length
  while min_size > new_array.length
  		new_array.push(value)
  end
  new_array
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

# Yes we broke down the problem into mini-steps during the pseudocode code state. This helps us to maintain a clear mindset throughout the challenge without getting overwhelming. We focus on each mini-step and only move on to the next when we sure about we got the viable logic for that particular step.


# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# Yes, my pseudocode style provided a frame for the code I am about to translate. For example, I put "IF" when I want to give a if-statement inside the pseudocode. The only difficulty I had was sometime I do not really know a particular method for the array to do what I want and I have to look it up from the ruby-docs.


# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# No, the initial solution failed several time before passing the tests. That's because we missed several "end" keyword for the if-else statement. I added the keyword to close the statement and the tests got passed.


# When you refactored, did you find any existing methods in Ruby to clean up your code?

# Yes, I was trying to use the "<<" operator to insert the padding value into the array I choose to return. However, I think that is not explicit enough. Then I found the push method. Push method does the same work but it enhances the readability as a package for other reader.


# How readable is your solution? Did you and your pair choose descriptive variable names?

# I think the code we provided above should be easy to read.


# What is the difference between destructive and non-destructive methods in your own words?

# Destructive method should be a method that take in input(s) as the parameter(s) and use it to generate a new product when return. It changes/modified the input(s) permanently during the process.

# Non-destructive method should be a method that take in input(s) as the parameter(s) and based on the input(s) to generate new product when return, keeping the original input(s) unchanged.

