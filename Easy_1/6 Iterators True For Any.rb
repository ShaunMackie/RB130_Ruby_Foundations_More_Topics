=begin

#Problem

- write a function called 'any' that takes an array as an argument, and a block
- it should return true if the block returns true for any of the element values
- otherwise it should return false
- the method must stop processing elements as soon as the block returns true
- if the array is empty, the function should return false
- our method cannot use all, any, none, one, etc. It must manually perform the required action

#Input

#Output

#Examples

# Rules + Questions

- the method must stop processing as soon as the block returns true
- we can't use any built-in Ruby methods named all, any, none, or one - but we can use each or select

#Algorithm 
- write a method that fuctions similar to the any? method
  - it stops processing and returns true if any block element returns true
  - otherwise it returns false
- you can't use any/all/none/one

# Implementation Notes 

- iterate over the array
- pass each element of the array to the block via yield
- return true if any element passed to the block returns true
- else return false

=end

def any?(array)
  array.each do |element|
    return true if yield(element) == true
  end
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false