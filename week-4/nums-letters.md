Reflections for Exercise 4.2

Release 1:

What does puts do?

In the Ruby language, the command "puts" will return the value "nil" and also print out result of the evalutated code the follows the puts command, followed by a new line.

What is an integer? What is a float?

These are two ways of expressing numerical values - an integer is number with no decimal (or other fractional) value, and no scientific notation either. A float is a number that includes decimal values and/or scientific notation.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Float division will return a precise value, exactly the result of that division, including decimal values. Integer division will still divide precisely, but will then round down any decimal values to the nearest integer. By means of analogy: float division is like buying from the bulk section at a grocery, where items are available by the pound, and you can purchase parts of pounds.  If I have $15 and almonds are $10/#, I can get #1.5 of almonds. Integer division is like a restaurant where items are not divisible into smaller units. If I have $15 and a burger is $10, I may only still get one burger.


Release 2:

Using IRB or submlime, write a program that calculates and outputs the:

Hours in a year

'''ruby
days_per_year = 365
hours_per_day = 24
puts days_per_year*hours_per_day
'''

Minutes in a decade

'''ruby
ypd = 10
dpy = 365
hpd = 24
mph = 60
puts ypd*dpy*hpd*mph
'''

Release 7: Reflection

How does Ruby handle addition, subtraction, multiplication, and division of numbers?

All you have to do is place any two variables, connected in between by a symbol for each, and it will return the result.
addition: X+Y
subtraction: X-Y
multiplication: X*Y
division: X/Y


What is the difference between integers and floats?

Integers are a numerical value type that is whole numbers only, ie no decimals or scientific notation (eg 3, 545, -1423). Floats are a numerical value type that do have decimals and scientific notation (eg 3.04, -45.023, 5e89).


What is the difference between integer and float division?

Integer division will always round down any fractional values of the result in the number returned, while floats will return the exact value.


What are strings? Why and when would you use them?

Strings are an array of characters, placed between single- or double-quotes. They are useful objects for text that you are manipulating (rather than numbers).


What are local variables? Why and when would you use them?

Local variables are variables that exist only in the context of a specific program, and are not carried across to others. They are useful for holding a value that is only needed in a small section of a program.


How was this challenge? Did you get a good review of some of the basics?

This was a nice little easy reminder and review; it's given me some confidence to continue on with the rest of the week.