=begin

#Problem

- write a minitest assertion that will fail if the class of 'value' is not 'Numeric' or one of Numeric's subclasses(integer, float, etc)

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

- here I can remember that we don't check the class, but of kind, which will check the class as well as all subclasses

=end

require 'minitest/autorun'

class Kind_Assertions < Minitest::Test
  def test_kind
    value = 2
    assert_kind_of(Numeric, value)
  end
end
