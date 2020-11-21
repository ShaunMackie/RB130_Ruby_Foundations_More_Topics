=begin

#Problem

write a minitest that fails if 'xyz' is not in the Array list

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

=end

require 'minitest/autorun'

class Testing < Minitest::Test
  def test_included_object
    list = ['xyz', 'abc', 123]
    assert_includes(list, 'xyz')
  end
end
