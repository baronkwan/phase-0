# DBC 4.2 Numbers, Letters, and Variable Assignment

## Release 1: Summarize


### What does puts do?

```puts``` returns nil and print the output to the console with a new line


### What is an integer? What is a float?

An integer is a number with no decimal point. e.g. 12
A float is a number with decimal point e.g. 12.99


### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Integer division and float division might look similar but the output is different. As the name suggested, integer division means one integer divided by another integer and the output will and only be a new integer. All the remainder will be discarded. On the other hand, a float division is a lot closer to what we were doing in our daily life. If there at least one number within the division is float, it called float division. It allows output to have decimal point.


## Release 2: Mini-Challenges

### Hours in a year

```
def hours_in_a_year(year)
    year * 365 * 24
end

hours_in_a_year(1)    # 8760
```

### Minutes in a decade

```
def min_in_a_decade(decade)
    decade * hours_in_a_year(10) * 60
end

min_in_a_decade(2)    # 5256000
```

## Release 5: Exercises

### 4.2.1 Defining Variables

https://github.com/baronkwan/phase-0/blob/master/week-4/defining-variables.rb

### 4.2.2 Simple String Methods

https://github.com/baronkwan/phase-0/blob/master/week-4/simple-string.rb

### 4.2.3 Local Variables and Basic Arithmetical Operations

https://github.com/baronkwan/phase-0/blob/master/week-4/basic-math.rb


## Release 7: Reflect

### How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby will simply ignore the remainder of any calculation if both numbers are integers or no specific coversion made.


### What is the difference between integers and floats?

An integer is a number with no decimal point. e.g. 12
A float is a number with decimal point e.g. 12.99


### What is the difference between integer and float division?

Integer division and float division might look similar but the output is different. As the name suggested, integer division means one integer divided by another integer and the output will and only be a new integer. All the remainder will be discarded. On the other hand, a float division is a lot closer to what we were doing in our daily life. If there at least one number within the division is float, it called float division. It allows output to have decimal point.


### What are strings? Why and when would you use them?

strings are sequences of characters between single or double quotation marks. We use strings to hold and manipulates an arbitrary sequence of characters.


### What are local variables? Why and when would you use them?

Local variables begin with lowercase letter or _. The scope of a local variable only stay within the corresponding block.


###How was this challenge? Did you get a good review of some of the basics?

This is a great challenge which allows us to test drive documents under the rspec environment. I like the way how rspec immediately tell you what went wrong on the terminal. This save lots of time trying to debug the code.

