=begin

#Problem

write a minitest that will fail if value.downcase does not return xyz

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

=end


require 'minitest/autorun'

class Testing < Minitest::Test
  def test_downcase
    value = 'XyZ'

    assert_equal('xyz', value.downcase)
  end
end