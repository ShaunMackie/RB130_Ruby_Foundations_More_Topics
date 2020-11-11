=begin

#Problem

- the zip method takes two arrays and combines them into a single array in which each element is a two-element array
  where the first element is a value from one array, and the second is a value from the 2nd array
- write our own version of the zip method
- the original array should not be mutated
- do not use the built-in zip method

#Input

- two arrays

#Output

- an array of two-element arrays

#Examples

# Rules + Questions

- don't use the zip method
- don't mutate the arguments
- the given array arguments will always have the same number of elements

#Algorithm 

- create a method that works the same as the #Zip method, without using the #Zip method
  the #Zip method takes two arrays, and creates an array of two-element arrays by taking the first element from the first array
  and the first element of the second array and combining them into their own array. It repeats this process for all elements in the arrays

# Implementation Notes 

- initialize a results var and assign an empty array
- initialize a counter and assign 0
- add the first element of the first array wth the 1st of the 2nd and store in results
- repeat until you reach the end of the arrays
- return the results array

=end


def zip(array1, array2)
  results = []
  counter = 0

  (array1.size).times do 
    results << [array1[counter], array2[counter]]
    counter += 1
  end

  results
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]