# Your Names
# 1) Tim Kelly
# 2) Baron Kwan

# We spent [1] hours on this challenge.


# Bakery Serving Size portion calculator.

=begin
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # a build-in hash that store items with its serving size.
#   error_counter = 3
#   # number of item inside the library

#   library.each do |food|
#     # Iterate through the library to check if there is a recipe for it
#     if library[food] != library[item_to_make]
#       error_counter += -1
#       # If the item doesn't match with library then reduce the size of 1
#     end
#   end

#   if error_counter > 0
#     # Raise an argument if the item is not in the library
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
  
  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # serving_size = library.values_at(item_to_make)[0]
  serving_size = library[item_to_make]
  
  # Return the value of the given key as an integer
  remaining_ingredients = num_of_ingredients % serving_size
  # Return the remaining ingredients as an integer
  
  food_made = num_of_ingredients / serving_size 
  
  if remaining_ingredients == 0
    "Calculations complete: Make #{food_made} of #{item_to_make}"
  elsif remaining_ingredients >= 7
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You should make a pie!"
  elsif remaining_ingredients >= 5
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Make CAKE!"
  elsif remaining_ingredients >= 1
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. How about some cookies?"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)

=end

# Cleaned up comments, refactored

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  food_made = num_of_ingredients / serving_size 
  
  if remaining_ingredients == 0
    "Calculations complete: Make #{food_made} of #{item_to_make}"
  elsif remaining_ingredients >= 7
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. You should make a pie!"
  elsif remaining_ingredients >= 5
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Make CAKE!"
  elsif remaining_ingredients >= 1
    "Calculations complete: Make #{food_made} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. How about some cookies?"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?

# What we have been doing during the challenge is to reasonize the original code to a more readable version. By working with another person allow me to think from other prespective hence to increase the readability of my codes.


# Did you learn any new methods? What did you learn about them?

# The new method we use here is the #has_key? which allow us to check if the hash contain a given key, if yes then it will return true, otherwise false.


# What did you learn about accessing data in hashes?

# I learned how to use to most efficient way to access data in hashes by using its keys or using the value to do a reverse lookup of its key.


# What concepts were solidified when working through this challenge?

# My concepts about arrays and hashes got solidified. I found some more other way and also the most efficient way to access data inside them. 


