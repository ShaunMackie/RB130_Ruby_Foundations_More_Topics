=begin

#Problem

- write a minitest that will fail if value is not nil

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

=end

require 'minitest/autorun'

class Testing < Minitest::Test
  def test_nil
    value = nil
    value2 = true
    assert_nil(value) #expected to pass
    assert_nil(value2) #expected to fail
  end
end