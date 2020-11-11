=begin

#Problem

- write a map method that behaves the same way as the existing #Map method when dealing with arrays
- it should take an array as an argument, and a block
- it should return a new array that contains the return value(s) produced by the block for each element in the given array argument
- our map function should return an empty array if the given array argument is empty
- for iteration, our method is restricted to using the following built-in Ruby methods:
  #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until


#Input

- an array

#Output

- an array

#Examples

# Rules + Questions

- we must make our own version of #Map that works on arrays
- we can only use these methods for iteration: #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until
- we must return an empty array, if the given array is empty

#Algorithm 

- write your own version of the Ruby #Map method that takes an array and a block as an argument
- restrict yourself to the following methods for iteration: #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until
- if the given argument is an empty array, return an empty array

# Implementation Notes 
- initialize a results var and assign an empty array
- iterate over the given array 
- pass each element from the array to the block
- store the return value of the block in the results array
- return the results array

=end

def map(array)
  results = []

  array.each do |element|
    results << yield(element)
  end

  results 
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]