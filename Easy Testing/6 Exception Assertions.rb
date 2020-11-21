=begin

#Problem

- write a minitest assertion that will fail unless employee.hire raises a NoExperienceError

#Input

#Output

#Examples

# Rules + Questions

#Algorithm 

# Implementation Notes 

- create an employee class
- create an instance method that raises the error when called
  - 
- instantiate an object called employee
- call the IM hire on the object and have it raise the proper error

=end
class NoExperienceError < StandardError; end

class Employee
  def hire
    raise NoExperienceError, "That person ain't got no experience!"
  end
end

require 'minitest/autorun'

class EmployeeTest < Minitest::Test
  def test_error
    employee = Employee.new

    assert_raises(NoExperienceError) {employee.hire}
  end
end