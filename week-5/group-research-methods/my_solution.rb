# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.each_index do |index|
    source[index] += thing_to_modify if source[index].is_a? Integer
  end
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each_pair do |key, value|
    source[key] = value + thing_to_modify
  end
end

# Identify and describe the Ruby method(s) you implemented.
# M1. I implemented an Array Class build-in method #each_index. it works similar to #each except 
#     it passes the index of the element instead of the element itself. This method return an array.
# M2. I implemented a Hash Class build-in method #each_pair. This method calls the block for each
#     key in the hash object (which is the source here), then passing the key-value as parameters
#     into the block. After the work is done, this method return a hash.


# Release 3: Reflect!

# Did you find any methods you thought would work but didn't? What made you think they would work? How did you determine they didn't?

# I initially try to implement #each but it doesn't provide me the corresponding index/key-value pair during the iteration.


# How does the method you chose iterate through and modify information in a data structure?

# The method #each_index for array allows me to keep track for the element's index throughout the iteration so that I can use it to make modification.
# The method #each_pair for hash does the same except it keeps track of each key-value pair during the iteration.


# Is the method you implemented destructive or non-destructive?

# The method I implemented are destructive. They changes the original array permanently.


# What did you learn from reading your accountability-group member's explanations on their solutions?

# I learned how my member think and that's a impressive way of learning.

# What did you learn about researching and explaining your research to others?

# I got access to people's insight! It taught me there will be always more than one way to solve a problem as long as you keep trying.