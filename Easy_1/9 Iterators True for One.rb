=begin

#Problem

- write a function called 'one' that takes an array as an argument, and a block
- it should return true if the block returns true for exactly one element
- otherwise it should return false
- the method must stop processing elements as soon as the block returns true for the second time
- if the array is empty, the function should return false
- our method cannot use all, any, none, one, etc. It must manually perform the required action

#Input

#Output

#Examples

# Rules + Questions

- the method must stop processing as soon as the block returns true for the second time
- we can't use any built-in Ruby methods named all, any, none, or one - but we can use each or select

#Algorithm 
- write a method that fuctions similar to the one? method
  - it stops processing and returns false if a block element returns true for a second time
  - it will also return false if no block objects return true
  - otherwise it returns true if only one block element returns true
- you can't use any/all/none/one

# Implementation Notes 

- initialize a counter and assign a value of zero to track how many times the block has returned true
- iterate over the array
- pass each element of the array to the block via yield
- return false if a second element passed to the block returns true
- return false if no elements passed to the block return true
- else return true if one element passed ot the block returns true

=end


def one?(array)
  counter = 0
  array.each do |element|
    counter += 1 if yield(element) == true
    return false if counter > 1
  end
  return false if counter != 1
  true
end

p one?([1, 3, 5, 6]) { |value| value.even? }    == true
p one?([1, 3, 5, 7]) { |value| value.odd? }     == false
p one?([2, 4, 6, 8]) { |value| value.even? }    == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true }           == false
p one?([1, 3, 5, 7]) { |value| false }          == false
p one?([]) { |value| true }  == false
