=begin

#Problem

- write a minitest assertion that will fail if 'value' is not an instance of the Numeric class exactly
- 'value' may not be an instance of one of Numeric's superclasses

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

=end

require 'minitest/autorun'

class Testing < Minitest::Test
  def test_class
    value = Numeric.new
    assert_instance_of(Numeric, value)
  end
end