=begin

#Problem

- write a method called each_with_object that behaves similarly to Enumberable#each_with_object for arrays
- it should take an array and an object and a block
- it should yield each element and the object to the block
- it should return the final value of the object
- if given an empty array as an argument, it should return the original object passed in as it's second argument

#Input

#Output

#Examples

# Rules + Questions

- you are restricted to #each, #each_with_index, #inject, loop, for, while, or until for iteration

#Algorithm 

- recreate the Enumerable#each_with_object method

# Implementation Notes 

- iterate over the given array
- yield each element plus the object to the block
- return the object

=end

def each_with_object(array, object)
  array.each do |element|
    yield(element, object)
    object.object_id
  end
  object
end

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
  p list.object_id
end
p result == [1, 9, 25]

# result = each_with_object([1, 3, 5], []) do |value, list|
#   list << (1..value).to_a
# end
# p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

# result = each_with_object([1, 3, 5], {}) do |value, hash|
#   hash[value] = value**2
# end
# p result == { 1 => 1, 3 => 9, 5 => 25 }

# result = each_with_object([], {}) do |value, hash|
#   hash[value] = value * 2
# end
# p result == {}
