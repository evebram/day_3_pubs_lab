require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')

class PubTest < MiniTest::Test

def setup
  @pub = Pub.new('The Thatch', 100, [])

  @drink1 = Drink.new('Guinness', 4)
  @drink2 = Drink.new('IPA', 5)

  @drinks = [@drink1, @drink2]
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




end
