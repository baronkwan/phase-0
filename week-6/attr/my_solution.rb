#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name
	def initialize(name)
		@name = name
	end
end


class Greetings
	def initialize(name)
		@name = NameData.new(name)
	end

	def hello
		puts
		beginning = "--------Printing Greeting--------"
		beginning.each_char { |x| print x; sleep 0.05 }
		sleep 0.8
		puts
		print_greeting = "Hello #{@name.name}! How wonderful to see you today."
		print_greeting.each_char { |x| print x; sleep 0.09 }
		sleep 0.8
		puts
		ending = "--------End of Greeting--------"
		ending.each_char { |x| print x; sleep 0.05 }
		puts
	end
end

greet = Greetings.new("Kazuma")
puts greet.hello

# Reflection
=begin

Release 1

What are these methods doing?

These methods are use for setting and reading information that user intended to show after created the instace of profile.


How are they modifying or returning the value of instance variables?

For each instance variable, there are always a pair of setter method and getting method. Which are used to modify and return the change of the instance variable.

Release 2

What changed between the last release and this release?

There is one getter method of age replaced by the line "attr_reader :age", which will do the same job.


What was replaced?

There is one getter method of age replaced by the line "attr_reader :age", which will do the same job.


Is this code simpler than the last?

Sure, we replaced three lines of codes with one simple line.

Release 3

What changed between the last release and this release?

We added another attr_writer and commented the setter method of age.


What was replaced?

The setter method of age #change_my_age=


Is this code simpler than the last?

Yes, we make it shorter.


What is a reader method?

A reader method allows you to extract data of its class's instance variable.


What is a writer method?

A writer method allows you to modify data of its class's instance variable.


What do the attr methods do for you?

attr methods do the same job as the getter and setter methods, but it provide the snytax sugar for it and make it shorter and more readable.


Should you always use an accessor to cover your bases? Why or why not?

It depends what you want you code to be. Sometime you don't want to compromise your code by overuse attr accessors.


What is confusing to you about these methods?

These methods are awesome! It bugs me at the beginning because it uses symbols as the attributes instead of strings.


=end

