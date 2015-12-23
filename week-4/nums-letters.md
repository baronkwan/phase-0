# DBC 4.2 Numbers, Letters, and Variable Assignment

Release 1: Summarize


### What does puts do?

```puts``` returns nil and print the output to the console with a new line


### What is an integer? What is a float?

An integer is a number with no decimal point. e.g. 12
A float is a number with decimal point e.g. 12.99


### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Integer division and float division might look similar but the output is different. As the name suggested, integer division means one integer divided by another integer and the output will and only be a new integer. All the remainder will be discarded. On the other hand, a float division is a lot closer to what we were doing in our daily life. If there at least one number within the division is float, it called float division. It allows output to have decimal point.

Release 2: Mini-Challenges


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







