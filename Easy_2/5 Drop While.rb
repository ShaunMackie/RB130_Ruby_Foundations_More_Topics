=begin

#Problem

- write a method called drop_while that iterates over a given array, passing each element to the block until it finds an element that returns false or nil
- when it does, it converts the remaining elements of the array, including the one that returned false or nil, into an array and returns it
- if an array is empty or the block returns a truthy value for every element of the block, it should return an empty array
- you are restricted to using #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until for iteration

#Input
- an array and a block

#Output
- an array

#Examples

# Rules + Questions
- you are restricted to using #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until for iteration
- return an empty array if the block returns truthy for all elements or if the given array argument is empty

#Algorithm 

- write your own version of the Ruby #drop_while method
- you are restricted to #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until for iteration

# Implementation Notes 

- init a results var and assign an empty array
- init a switch var and set to the string 'OFF'
- iterate over the array
- pass each element to the block
- if the block returns nil or false, change the switch var to ON
- if the switch var is ON, shovel all remaining elements into the results array
- return the results var

=end

def drop_while(array)
  switch = "OFF"
  results = []

  array.each do |element|
    if switch == "ON"
      results << element
    elsif yield(element) == false || yield(element) == nil
      switch = "ON"
      results << element
    else
      'do nothing'
    end
  end

  p results
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []