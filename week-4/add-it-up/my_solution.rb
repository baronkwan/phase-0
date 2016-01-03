# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Baron Kwan].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Sum of the numbers in the array
# Steps to solve the problem.
# Use .each method to iterate through array and sum the numbers

# 1. total initial solution
=begin

def total(numbers)
 sum_of_total = 0
 numbers.each { |x| sum_of_total += x )
 sum_of_total
end

=end

# 3. total refactored solution

def total(numbers)
	numbers.reduce(:+)
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of string
# Output: Combined strings
# Steps to solve the problem.


# 5. sentence_maker initial solution

=begin

def sentence_maker(words)
 combined_strings = ""
 words.each do |x|
   combined_strings += " " + x.to_s
 end
 combined_strings.strip.capitalize + "."
end

=end

# 6. sentence_maker refactored solution

def sentence_maker(words)
	words.join(" ").to_s.capitalize + "."
end

