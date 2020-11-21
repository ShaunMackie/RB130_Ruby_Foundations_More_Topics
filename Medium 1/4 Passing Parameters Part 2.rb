=begin

#Problem

- write a method that takes an array
- the method should yield the contents of the array to a block
- the block should assign the block variables in such a way that it ignores the first two elements and groups all remaining elements as a raptors array

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

- we want to define a method that takes an array and yields the array to the block
- then we want the block to ignore the first two elements and assign the rest to an array called raptors, which we can do by using the splat operator

=end

  def some_method(array)
    yield(array)
  end

array = %w(raven finch hawk eagle)

some_method(array) { |_, _, *raptors| puts "raptors: #{raptors.join(", ")}" } #originally I was just outputting the items, not "raptors.join"

