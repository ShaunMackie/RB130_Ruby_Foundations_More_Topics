=begin

#Problem

- write a function called 'none' that takes an array as an argument, and a block
- it should return false if the block returns true for any of the element values
- otherwise it should return false
- the method must stop processing elements as soon as the block returns false
- if the array is empty, the function should return true
- our method cannot use all, any, none, one, etc. It must manually perform the required action

#Input

#Output

#Examples

# Rules + Questions

- the method must stop processing as soon as the block returns true
- we can't use any built-in Ruby methods named all, any, none, or one - but we can use each or select

#Algorithm 
- write a method that fuctions similar to the none? method
  - it stops processing and returns false if any block element returns true
  - otherwise it returns true
- you can't use any/all/none/one

# Implementation Notes 

- iterate over the array
- pass each element of the array to the block via yield
- return false if any element passed to the block returns true
- else return true

=end

def none?(array)
  array.each do |element|
    return false if yield(element) == true
  end
  true
end

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true