=begin

#Problem

- write a minitest that will fail if value.odd? is not true

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

=end

require 'minitest/autorun'

class Testing < Minitest::Test 
  def test_value_odd
    value = 3
    assert value.odd?, "This is not odd"
  end

  def test_value_not_odd
    value = 2
    assert value.odd? == false, "This is not odd"
  end
end