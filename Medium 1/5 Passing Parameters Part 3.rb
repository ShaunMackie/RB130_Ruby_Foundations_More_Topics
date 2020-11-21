=begin

#Problem

- using the below-given code, fill out the following method calls for 'gather' so that they produce the corresponding output
  shown in the numbers 1-4 listed below:

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

=end

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# gather(items) do |*produce, wheat|
#   puts *produce.join(', ')
#   puts wheat
# end

# gather(items) do |fruit, *vegetables, wheat|
#   puts fruit
#   puts vegetables.join(', ')
#   puts wheat
# end

# gather(items) do |fruit, *crops|
#   puts fruit
#   puts crops.join(", ")
# end

gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end