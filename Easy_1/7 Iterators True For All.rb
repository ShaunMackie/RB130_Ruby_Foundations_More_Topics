=begin

#Problem

- write a function called 'all' that takes an array as an argument, and a block
- it should return false if the block returns false for any of the element values
- otherwise it should return true
- the method must stop processing elements as soon as the block returns false
- if the array is empty, the function should return true
- our method cannot use all, any, none, one, etc. It must manually perform the required action

#Input

#Output

#Examples

# Rules + Questions

- the method must stop processing as soon as the block returns false
- we can't use any built-in Ruby methods named all, any, none, or one - but we can use each or select

#Algorithm 
- write a method that fuctions similar to the all? method
  - it stops processing and returns false if any block element returns false
  - otherwise it returns true
- you can't use any/all/none/one

# Implementation Notes 

- iterate over the array
- pass each element of the array to the block via yield
- return false if any element passed to the block returns false
- else return true

=end

def all?(array)
  array.each do |element|
    return false if yield(element) == false
  end
  true
end

p all?([1, 3, 5, 6]) { |value| value.odd? } == false
p all?([1, 3, 5, 7]) { |value| value.odd? } == true
p all?([2, 4, 6, 8]) { |value| value.even? } == true
p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p all?([1, 3, 5, 7]) { |value| true } == true
p all?([1, 3, 5, 7]) { |value| false } == false
p all?([]) { |value| false } == true