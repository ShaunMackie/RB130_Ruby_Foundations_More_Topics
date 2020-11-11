=begin

#Problem

- write a function called each_with_index that behaves the same as the built-in method of the same name
- it should take an array as an argument as well as a block
- it should yield to each element and an index number of the block
- it should return the original array - is this the one that is passed in or the one that it's called on? these are the same thing right?
- you are restricted to #each, #each_with_object, #inject, loop, for, while, or until for iteration

#Input

- an array and a block

#Output

- a string

#Examples

# Rules + Questions

- you are restricted to #each, #each_with_object, #inject, loop, for, while, or until for iteration
- the function must return the array that is passed in as an argument


#Algorithm 

- recreate the each_with_index method
- you are restricted to #each, #each_with_object, #inject, loop, for, while, or until for iteration

# Implementation Notes 

- not exactly sure how to do this one
  - I need to iterate over the given array argument
  - I need to pass each element to the block
  - I also need to pass each element's index value to the block
  - so I could iterate over the given array with each
  - I could use a counter for the index
  - and increment the counter each time we pass an element?

- initialize a counter variable and assign a value of zero
- iterate over the array
- yield to the block, passing in each element + counter
- increment counter by 1
- return the array argument

=end

def each_with_index(array)
  counter = 0

  array.each do |element|
    yield(element, counter)
    counter += 1
  end

  array
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]

