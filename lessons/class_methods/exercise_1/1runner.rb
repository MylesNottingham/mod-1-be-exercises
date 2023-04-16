require './lib/dog'

max = Dog.new("Max")
puts max.woof

## Describe what each part of the code above did -
# `max` => is variable assigned to Dog instance with name "Max"
# `Dog` => is class
# `.woof` => calls woof method on max, which is instance of Dog class

puts Dog.woof

## Is there any difference between the two methods above? (max.woof and Dog.woof)?

# The first calls an instance method and the second calls a class method

## Un-comment the line of code below, does it work? Why or why not?
Dog.bark

# No. There is no bark method for the Dog class.
