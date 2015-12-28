# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home." # Correct the assignment on the left

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end # Add an "end" here
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# On line 170
# 3. What is the type of error message?
# Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# Missing the "end" keyword to close the block for the while loop
# 6. Why did the interpreter give you this error?
# The while loop was not complete by missing an "end" hence the error occured.

# --- error -------------------------------------------------------

south_park = "" # Assign it to an empty string

# 1. What is the line number where the error occurs?
# On line 36
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method `south_park' for main
# 4. Where is the error in the code?
# Undefined variable "south_park". It is not a keyword nor a defined variable
# 5. Why did the interpreter give you this error?
# It is not a keyword nor a defined variable, the interpreter was not able to interpret it.

# --- error -------------------------------------------------------

def cartman() # Complete the whole definition of cartman method with no argument
	"WOW"
end

# 1. What is the line number where the error occurs?
# On line 51
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# The whole undefined method
# 5. Why did the interpreter give you this error?
# An undefined method, therefore, the computer doesn't know what to do with it

# --- error -------------------------------------------------------

def cartmans_phrase(phrase) # Add argument on the definition of method
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# On line 68
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# On line 68 the creator forgot to put parameter
# 5. Why did the interpreter give you this error?
# The cartmans_phrase was called with 1 argument while it has no argument when it was defined

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("WHAT!") # Add offensive_message to the method when called

# 1. What is the line number where the error occurs?
# On line 87
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# n `cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# No argument when the "cartman_says" method was called
# 5. Why did the interpreter give you this error?
# Because no argument when the "cartman_says" method was called



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Peter")

# 1. What is the line number where the error occurs?
# On line 108
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# It occured on the "cartmans_lie" method when called
# 5. Why did the interpreter give you this error?
# Only 1 argument was given while the definition requires 2 arguments.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5 # Switch their position

# 1. What is the line number where the error occurs?
# On line 127
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# When 5 times "Respect my authoritay"
# 5. Why did the interpreter give you this error?
# integer "5" cannot multiple "Respect my authoritay" times.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/20 # Eliminate the ZeroDivisionError


# 1. What is the line number where the error occurs?
# On line 142
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# On line 142, when 20 is divided by 0
# 5. Why did the interpreter give you this error?
# We cannot divide any number by zero by default

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# On line 158
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/BaronKwan/phase-0-curriculum/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# When the computer try to load a file but could not find it under the same directory
# 5. Why did the interpreter give you this error?
# We do not have such file inside the directory for reference


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?

The last "LoadError" was the difficult to read since I have not encountered this type of error before.


How did you figure out what the issue with the error was?

After a second look at what is being required, I notice that I donnot have such file inside the directory. So I commented the statement.


Were you able to determine why each error message happened based on the code? 

Yes, Most if them are straight foward and the message provided helps me to find and fix those errors easily.


When you encounter errors in your future code, what process will you follow to help you debug?

I will try to check all keywords were typed correctly. Then I will make sure I have closed all blocks with keyword "end". If the error still exist I will look at the message provided on the terminal and try to find hints in order to fix it.


	
=end