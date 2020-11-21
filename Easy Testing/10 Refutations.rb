=begin

#Problem

- write a test that will fail if 'xyz' is one of the elements in Array list

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

=end

require 'minitest/autorun'

class Annoyed < Minitest::Test

  def test_refutations
    list = [1, 2, 3]
    refute_includes(list, 'xyz')
    refute_includes(list, 1) #expected to fail
  end
end

