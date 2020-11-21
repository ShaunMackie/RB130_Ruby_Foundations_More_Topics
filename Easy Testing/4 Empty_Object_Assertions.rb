=begin

#Problem

write a minitest that will fail if the Array list is not empty

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

=end

require 'minitest/autorun'

class Testing < Minitest::Test
  def test_empty_object
    array = []
    assert_equal([], array)
    assert_empty(array)
  end
end

