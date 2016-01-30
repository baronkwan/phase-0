# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

# 1. Define a function called "reverse_words" which takes a sentence as a string.
# 2. Split the sentence with whitespace as its separator and store them inside an array.
# 3. Iterate through each item inside the array, reverse the whole word.
# 4. Join them back into one big string.


# Initial Solution

def reverse_words(sentence)
	split_words = sentence.split(" ")
	split_words.each { |word| word.reverse! }
	split_words.join(" ")
end


# Refactored Solution

def reverse_words(sentence)
	split_words = sentence.split(" ")
	split_words.each { |word| word.reverse! }
	split_words.join(" ")
end



# Reflection

# What concepts did you review or learn in this challenge?

# The mighty use of Ruby's built-in methods! Everything looks much more descriptive here.


# What is still confusing to you about Ruby?

# Maybe the transition back from JS to Ruby. And also I always felt like my code is not refactored enough.


# What are you going to study to get more prepared for Phase 1?

# I am absolutely going to stick on stackoverflow and googling every question I have about coding.

