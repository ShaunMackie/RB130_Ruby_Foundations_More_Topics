=begin

#Problem

- write a method called each_cons that iterates over a collection, taking two elements at a time and passing them to the block
- it then returns a value of nil
- the method should take an array and a block.
- it should yield consecutive pairs of elements to the block and return nil
- you are restricted to #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until for iteration

#Input

- an array and a block

#Output

nil and a hash populated with the return values from the block

#Examples

# Rules + Questions

#Algorithm 

- recreate the each_cons method

# Implementation Notes 

- init a counter variable and assign a value of 0
- iterate over the array
- pass elements to the block, two at a time
- increment the counter by 2
- return nil

=end

def each_cons(array)
  return nil if array.empty?
  counter = 0

  loop do
    break if counter >= array.size - 1
    yield(array[counter], array[counter + 1])
    counter += 1
  end

  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil
