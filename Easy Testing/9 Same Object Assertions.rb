=begin

#Problem

write a minitest that fails if 'list' and the return value of list.process are different objects
#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

=end

require 'minitest/autorun'

class List
  attr_reader :another_process

  def process
    self
  end
end

class Testing < Minitest::Test  
  def test_objects
    list = List.new
    assert_same(list, list.process) #expected to pass
    assert_same(list, list.another_process) #expected to fail
  end
end
