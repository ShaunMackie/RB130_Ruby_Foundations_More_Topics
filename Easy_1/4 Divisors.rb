=begin

#Problem

- write a function that returns a list of all of the divisors of the positive integer passed in as an argument
- the return value can be in any sequence I wish

#Input

#Output

#Examples

divisors(1) == [1]
divisors(7) == [1, 7]
divisors(12) == [1, 2, 3, 4, 6, 12]
divisors(98) == [1, 2, 7, 14, 49, 98]
divisors(99400891) == [1, 9967, 9973, 99400891]

# Rules + Questions

#Algorithm 

- write a method that returns an array of every number that divides evenly into the given integer argument
- all arguments will be positive
- the order of the numbers in the array can be any order you wish

# Implementation Notes 

- init a results var
- create a range from 1 to the given number, including the given number
- iterate over the range
- include the current number in the results array if the current number divides cleanly into the given argument
- return the results array

=end

def divisors(integer)
  results = []

  (1..integer).each do |num|
    results << num if integer % num == 0
  end

  p results
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891]

