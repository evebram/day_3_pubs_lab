require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')

class CustomerTest < MiniTest::Test

def setup

 @customer = Customer.new('Alice', 30, 92, 0)

 @drink1 = Drink.new('Guinness', 4, 2)

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

def test_cutomer_age
  assert_equal(92, @customer.age)
end

def test_customer_drunkenness()
  assert_equal(0, @customer.drunkenness)
end

def test_customer_drunkenness_increase
  @customer.get_more_drunk(@drink1.alcohol_level)
  assert_equal(2, @customer.drunkenness)
end

end
