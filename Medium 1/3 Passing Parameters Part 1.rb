=begin

#Problem

- modify the method below so that the display/output of 'items' is moved to a block
  and it's implementation is left up to the user of the 'gather' method

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

=end

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(&block)
  puts "Let's start gathering food."
  block.call
  puts "Nice selection of food we have gathered!"
end

#I feel like the LS answer is more flexible, since then it would work with more arrays, not just the given 'item array'
#but my solution works for the given parameters
gather { items.each do |item| puts "I'd prefer to not eat " + item.capitalize  end }

