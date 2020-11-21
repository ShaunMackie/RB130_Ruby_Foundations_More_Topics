require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class TestCashRegister < Minitest::Test
  def test_accept_money
    purchase = Transaction.new(100)
    register = CashRegister.new(1000)
    purchase.amount_paid = 50
    
    total_cash = register.total_money + purchase.amount_paid
    p register.total_money
    register.accept_money(purchase)
    assert_equal(total_cash, register.total_money)
    p register.total_money
  end
end