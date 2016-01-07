# Calculate the mode Pairing Challenge

# I worked on this challenge [ with: Chris Bunkers, Baron Kwan]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# It would be an array. List of objects wether they are numbers or strings.

# What is the output? (i.e. What should the code return?)
# It would also be an array but only the objects that repeated the most times.


# What are the steps needed to solve the problem?

# 1. Take each individual object and transform it into the key of an empty hash. Set the default value of each object as 0.

# 2. For each time you get a key you add +1 to that key's value.

# 3. Create a new empty array

# 4. Push the most frequent key to that array. IF there are more than one object, push all of them.

# 5. Return that new array.



# 1. Initial Solution
=begin
def mode(array)
counter = Hash.new(0)
array.each do |i|
  counter[i] += 1
end
new_array = []
counter.each do |k, v|
  if v == counter.values.max
    new_array << k
  end
end
return new_array
end
=end

# 3. Refactored Solution

def mode(array)
  counter = array.inject(Hash.new(0)) {|hash, key| hash[key] += 1; hash }
  new_array = []
  counter.each do |k, v|
    if v == counter.values.max
      new_array << k
    end
  end
  return new_array
end

# 4. Reflection


# Which data structure did you and your pair decide to implement and why?

# We have decided to use Hash to store data from the array. Because we need to keep track of the items and it corresponding repeating frequency.


# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# Definitely, we start off by writing pseudocode code. By doing so, we need to break down the problem into many baby-steps. It helps cleanse our thought and being forcus on each step without getting overwhelming.


# What issues/successes did you run into when translating your pseudocode to code?

# We successfully transform the pseudocode into actual code at the first try before running it with the spec file. I think pseudocode helped a lots here.


# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# On the first try, we use an array method called ".each" to count the frequency of each object in the input while iterate throught it. We spent more time on looking for Enum methods for this challenge than solving the problem.
# We ended up found a method "inject-block" that can combind several steps into one. The overall concept is the same just shortener into one-line. However, I personally found that the readibility decreased since other people might not be familiar with the inject method. 


