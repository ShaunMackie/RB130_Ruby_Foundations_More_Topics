=begin

#Problem

- write a function that takes 3 arguments - the first integer in a range, the last integer in a range,
  and an integer representing the step value that should be applied to each interation
- the fuction also must take a block to wihic is will yield(or call) successive iteration values

#Input

- three integers

#Output

- a string

#Examples

# Rules + Questions

- the first two given integer arguments representing the bookends of a range
- the third integer argument is the gap between steps  the step value

#Algorithm 

- write a method that takes three integer arguments
- the first two arguments are the beginning and ending integers of a range
- the third argument is the step value - the gap between returned integers
- the method takes a block - pass the nth(step) element in the range, starting with the first integer argument, to the block
- stop when you reach the closest number to the last number in the range, without going over
## even though I understand this problem quite well, I feel my algo is quite sub par

# Implementation Notes 
- initialize a counter var and assign a vlaue of zero
- create a range from the first two arguments
- iterate over the range
- pass every nth integer to the block, starting at the first number in the range, where nth is the third given argument
- increment the counter by the 3rd argument
- return the range - the question does not specify what should be returned and the range is what the original #Range method returns
  so that makes the most sense to me


=end

def step(num1, num2, num3)
  counter = num1

  (num1..num2).each do |integer|
    yield(counter)
    counter += num3
    break if counter > num2
  end

  (num1..num2)
end

step(1, 10, 3) { |value| puts "value = #{value}" }

step(2, 20, 3) { |value| puts "value = #{value}" }

