require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(1000)
    @transaction = Transaction.new(50)
  end

  def test_accept_money
    @transaction.amount_paid = 50
    
    total_cash = @register.total_money + @transaction.amount_paid
    #p @register.total_money
    @register.accept_money(@transaction)
    assert_equal(total_cash, @register.total_money)
    #p @register.total_money
  end

  def test_change
    @transaction.amount_paid = 100
    change = @transaction.amount_paid - @transaction.item_cost
    #p change

    assert_equal(change, @register.change(@transaction))
  end 
end

class TransactionTest < Minitest::Test
  def setup
    @register = CashRegister.new(500)
    @transaction = Transaction.new(30)
  end

  def test_prompt_for_payment
    new_input = StringIO.new("100\n")
    @transaction.prompt_for_payment(input: new_input)
    assert_equal(100, @transaction.amount_paid)
  end
end