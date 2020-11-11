=begin

#Problem

- write a function that takes an array and a block that returns true or false, depending on the value of the array element passed to it
- the method should return a count of the number of times the block returns true
- we can't use #count in our solution

#Input

- an array and a block

#Output

- an integer

#Examples

# Rules + Questions

- we can't use the count methods
- we need to return a count representing the number of times the block returned true

#Algorithm 

- write a function that takes an array and a block
- the function must return an integer representing the number of times the block returns true

# Implementation Notes 

- initialize a count var and assign a value of zero, to keep track of how many times the block returns true
- iterate over the array
- pass each element to the block
- increment the count var by 1 each time the block returns true
- return the count var

=end

def counter(array)
  count = 0

  array.each do |element|
    count += 1 if yield(element)
  end

  count
end


p counter([1,2,3,4,5]) { |value| value.odd? } == 3
p counter([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p counter([1,2,3,4,5]) { |value| true } == 5
p counter([1,2,3,4,5]) { |value| false } == 0
p counter([]) { |value| value.even? } == 0
p counter(%w(Four score and seven)) { |value| value.size == 5 } == 2