require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class PubTest < MiniTest::Test

def setup
  @drink1 = Drink.new('Guinness', 4, 2)
  @drink2 = Drink.new('IPA', 5, 1)

  @drinks = [@drink1, @drink2]

  @pub = Pub.new('The Thatch', 100, @drinks)

  @customer1 = Customer.new('Alice', 30, 92, 6)
  @customer2 = Customer.new('Timmy', 30, 17, 0)
  @customer3 = Customer.new('Roderick', 30, 25, 4)

end

def test_new_pub()
  assert_equal(Pub, @pub.class())
end

def test_pub_name()
assert_equal('The Thatch', @pub.name())
end

def test_pub_till()
  assert_equal(100, @pub.till())
end

def test_drinks()
  assert_equal(2, @drinks.size())
end

def test_add_money_to_till
  @pub.add_money_to_till(4)
  assert_equal(104, @pub.till)
end

def test_removes_drink
  @pub.remove_drink(@drink1)
  assert_equal(1, @pub.count_drinks())
end

def test_add_drink
  @drink3 = Drink.new('Vodka', 2, 1)
  @pub.add_drink(@drink3)
  assert_equal(3, @pub.count_drinks())
end

def test_sell_drink_to_customer
  @pub.remove_drink(@drink1)
  @customer1.remove_money(@drink1.price)
  @pub.add_money_to_till(@drink1.price)
  assert_equal(1, @pub.count_drinks())
  assert_equal(26, @customer1.wallet())
  assert_equal(104, @pub.till())
end

def test_customer_age__over_18
  assert_equal(true, @pub.customer_legal_age(@customer1.age))
end

def test_cutomer_age__under_18
  assert_equal(false, @pub.customer_legal_age(@customer2.age))
end

def test_drinking_limit__not_drunk
  assert_equal(true, @pub.drinking_limit(@customer3.drunkenness))
end

def test_drinking_limit__too_drunk
  assert_equal(false, @pub.drinking_limit(@customer1.drunkenness))
end

def test_can_we_serve_customer__yes

  # @pub.add_money_to_till(@drink1.price)
  assert_equal(true, @pub.customer_legal_age(@customer3.age))
  assert_equal(true,   @pub.drinking_limit(@customer3.drunkenness)
)
  # assert_equal(104, @pub.till())
end

def test_can_we_serve_customer__no
  assert_equal(true,   @pub.drinking_limit(@customer2.drunkenness))
  assert_equal(false, @pub.customer_legal_age(@customer2.age))
end

def test_can_we_serve_customer__no
  assert_equal(true, @pub.customer_legal_age(@customer1.age))
  assert_equal(false,   @pub.drinking_limit(@customer1.drunkenness)
)
end

end
