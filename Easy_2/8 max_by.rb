=begin

#Problem

- write a method called max_by that behaves similarly to Enumberabl#max_by for Arrays
- it should take an array and a block
- it should return the element that contains the largest value
- if the given array argument is empty, it should return nil

#Input

#Output

#Examples

# Rules + Questions

- you are restricted to #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until for iteration

#Algorithm 

- recreate the Enumerable#max_by method

# Implementation Notes 

- use a guard claus to return nil if the given array is empty
- init a largest_value var and assign the first element of the given array argument
- iterate over the given array
- yield to the block
- if the return value ofthe block is bigger than the current value of largest_value, reassign largest value to the current element
- return largest_value var

=end


def max_by(array)
  return nil if array.empty?
  current_element = array.first
  largest_value = yield(array.first)

  array.each do |element|
    if yield(element) > largest_value
      current_element = element
      largest_value = yield(element)
    end
  end

  current_element
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil