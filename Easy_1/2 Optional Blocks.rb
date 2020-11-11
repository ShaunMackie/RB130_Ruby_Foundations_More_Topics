=begin

#Problem

- write a method that takes an optional block
- if the block is specified, the method should execute t and return the return value of the block
- if no block is specified, the method should return the string 'Does not compute'

#Input

#Output

#Examples

compute { 5 + 3 } == 8
compute { 'a' + 'b' } == 'ab'
compute == 'Does not compute.'

# Rules + Questions

#Algorithm 
- write a function that takes an optional block
- if a block is given, execute and return the return value of the block
- if no block is given, return the string "Does not compute"

# Implementation Notes 

- use block_given? as part of a conditional to execute the block or return the string 

=end

def compute
  if block_given?
    yield
  else
    "Does not compute."
  end
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'

