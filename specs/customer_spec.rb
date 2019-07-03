require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../pub.rb')

class CustomerTest < MiniTest::Test

def setup

 @customer = Customer.new('Alice', 30)

end

def test_new_customer
  assert_equal(Customer, @customer.class)
end

def test_customer_name
  assert_equal('Alice', @customer.name)
end

def test_customer_wallet
  assert_equal(30, @customer.wallet)
end

#Can we directly reference a value in another class (@pub.drink1.price)
def test_remove_money_from_wallet
  @customer.remove_money(4)
  assert_equal(26, @customer.wallet)
end






end
