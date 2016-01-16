# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Peter Stratoudakis, Baron Kwan ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 integers
# Output: True/False
# Steps:
=begin
1. Check if input is 16 digit integer
2. Convert to Array, two digits per index
3. Double every sub-array first index
4. check IF any values in first indexes are greater or equal to ten
5. IF values are greater than ten, split at sum digits
6. Add up the entire array
7. Check if sum is divisible by 10, if yes return true, if no then false
=end
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(card_number)
#     if ! (card_number.is_a? Integer)
#       raise ArgumentError, 'We need a 16 digit integer'
#     else
#       @card_number = card_number
#     end   
#   end
  
#   def breakdown
#     @array = @card_number.to_s.split(//).each_slice(2).collect{|num| num }
#     @array.map! do |sub_array|
#       sub_array.map! do |num|
#         num.to_i
#       end
#     end
#   end
  
#   def luhn 
#     for i in 0...@array.length
#       for j in 0...1
#         @array[i][j] = @array[i][j] * 2
#       end
#     end
    
#     new_array = @array.flatten
#     p "Good thing: #{new_array}"
#     double_digit_array = []

#     new_array.map do |num|
#       if num >= 10
#         num.to_s.split(//).map do |double_digits|
#           double_digit_array.push(double_digits.to_i)
#         end
#       end
#     end
    
#     new_array.delete_if{ |num| num >= 10 }
    
#     p "new_array: #{new_array}"
#     p "double_digit_array: #{double_digit_array}"
    
#     @total = new_array.reduce(:+) + double_digit_array.reduce(:+)
    
#     p "total: #{@total}"
    
#   end

#   def check_card
#     (@total % 10 == 0) ? true : false
#   end
  
# end


# test = CreditCard.new(4563960122001999)
# test.breakdown
# test.luhn
# p test.valid_card?


# Refactored Solution

class CreditCard

  def initialize(card_number)
    if !(card_number.is_a? Integer) || card_number.to_s.length != 16
      raise ArgumentError,'We need a 16 digit integer.'
    else
      @card_number = card_number
    end   
  end
  
  def breakdown
    pair_nums_to_s = @card_number.to_s.split(//).each_slice(2).collect{ |pair| pair }
    pair_nums_to_i = pair_nums_to_s.map!{ |sub_array| sub_array.map!{ |num| num.to_i } }
    @array = pair_nums_to_i
  end
  
  def luhn_algorithm
    # Iterating through array and doubling the first number inside each sub array
    @array.map { |sub_array| sub_array[0] *= 2 }
    # Permanently flatten the array
    @array.flatten!
    # Create an empty array to store split-double digit numbers
    split_double_digit_only = []
    # Split the double digit numbers and push them into the "double_digit_only" array
    # Use #map instead of #map! here because we want to prevent element's order inside the array changed
    @array.map do |num|
      if num >= 10
        split_double_digit_arr = num.to_s.split(//)
        split_double_digit_arr.map do |each_digit|
          split_double_digit_only.push(each_digit.to_i)
        end
      end
    end
    # Delete numbers on the original array if it is a double digit numbers
    @array.delete_if{ |num| num >= 10 }
    # Sum all numbers
    @total = @array.reduce(:+) + split_double_digit_only.reduce(:+)
  end

  def check_card
  	self.breakdown
  	self.luhn_algorithm
    (@total % 10 == 0) ? true : false
  end
end


test = CreditCard.new(4563960122001999)
p test.check_card



# Reflection

# What was the most difficult part of this challenge for you and your pair?

# The most difficult part for us is how to apply the luhn_algorithm correctly on our method.
# Since we stored the data into a nested array, it was hard to do changes on elements inside
# the subset. We both know how to use the for loop to solve the problem but not really familiar
# using all those build-in Ruby iteration method. We figured the Ruby's way out eventually.


# What new methods did you find to help you when you refactored?

# Nothing new. We used the #map/#collect to iterate through the nested array and the
# #reduce/#inject to sum up all those digit after apply the luhn_algorithm.


# What concepts or learnings were you able to solidify in this challenge?

# This challenge helps me to solidify my concept on Array, especially nested array. Iterate
# through array is easy. But iterate through the nested one turn out pretty hard. I am happy
# that we have a chance to apply this awesome algorithm into our codes. It feels really good
# after I successfully solve the challenge.



