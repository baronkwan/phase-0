# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [ [1,2], ["inner", ["eagle", "par", ["FORE", "hook"] ] ] ]

# attempts:
# ============================================================
p array[1][1][2][0]


# ===========================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"} } } }

# attempts:
# ============================================================
# p hash[:outer][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"} ] }

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map! do |item|
#   if item.is_a? Array
#     item.map! {|x| x + 5}
#   else
#     item + 5
#   end
# end

# p number_array

number_array.map! do |item|  
  (item.is_a? Array) ? item.map! {|x| x + 5} : item + 5
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def name_generator(array)
  array.map do |word|
    !(word.is_a? String) ? name_generator(word) : word + "ly"
  end
end

p name_generator(startup_names)
p startup_names
    
# Reflection

# What are some general rules you can apply to nested arrays?

# First of all, to identify how many layers are we dealing with on the nested array. Then check to
# see if the next item is another nested array or not, if yes, apply another iteration. If no, do
# 	whatever you need to do to that item.


# What are some ways you can iterate over nested arrays?

# We thought of using the #each to iterate through the nested array at first. But we found that
# when we want to make changes on items during the iteration, #map is a better choice since it will
# return an array with values that have modified by the block.



# Did you find any good new methods to implement or did you re-use one you were already familiar with?
# What was it and why did you decide that was a good option?
  
# We found that using recusion plus the #map would us iterate through a nested array. By recusion, 
# what we do is to set up a base case and the condition that trigger it then let it run by itself. 
# This reduce a large amount of code compared with using the other way.

