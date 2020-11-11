=begin

#Problem

- write a function that takes a sorted array of integers and returns an array 
  that includes all the missing integers (in order) between the first and last elements of the argument

#Input
- an array

#Output

- an array

#Examples

missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []

# Rules + Questions

#Algorithm 

- write a method that takes a sorted array of integers and returns an array that contains the missing integers, sorted in order,
  between the first and last integers in the given array

# Implementation Notes 

FIRST INSTINCT
- init a results array
- create a range from the first integer in the array to the last
- iterate over this range
- if the given array does not include the current number, shovel it into the results array
- return the results array

USING A BLOCK
- pass in a select block - something like calling select on the array argument
(array.first..array.last).select do |num|
  !array.include?(num)
end

- didn't figure it out with a block but wasn't supposed to - nobody else did either nor did the given solution
=end

def missing(array) 
  results = []

  (array.first..array.last).each do |num|
    results << num if !array.include?(num)
  end
  results
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

