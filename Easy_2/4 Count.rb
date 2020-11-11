=begin

#Problem

- write a count method that behaves like the Enumerable #count methd 
  it iterates over the given collection, passing each element to the block
  it then returns the number of elements for which the block returns a truthy value

- it should take 0 or more arguments and a block
- it should erturn the total number of arguments for which the block returns true
- if the argument list is empty, it should return 0
- you are restricted to using #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until for iteration

#Input

zero or three integers plus a block


#Output

- an integer

#Examples

# Rules + Questions

- create a count method that functions similary to Enumerable #count
- you are restricted to using #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until for iteration
- return zero if no arguments are given


#Algorithm 

- write a method that fuctions like Enumerable #count
- you are restricted to using #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until for iteration
- return zero if no arguments are given

# Implementation Notes 

- have the method definition take 3 arguments that default to nil
- initialize a counter var and assign a value of zero
- init a variable and assign all 3 given args to an array
- return counter if all 3 args ar enil
- iterate over the array
- pass each arg to the block
- increments the counter var if the block returns true
- return the counter var


=end

def count(arg1 = nil, arg2 = nil, arg3 = nil)
  arguments = [arg1, arg2, arg3]
  counter = 0
  return counter if arguments.all?(nil)
  arguments.each do |element|
    counter += 1 if yield(element)
  end

  counter
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3