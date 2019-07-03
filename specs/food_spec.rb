require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')
require_relative('../food.rb')

class FoodTest < MiniTest::Test

def setup
  @food = Food.new('Crisps', 2, 1)
end

def test_food_class
  assert_equal(Food, @food.class)
end

def test_food_name
  assert_equal('Crisps', @food.name)
end

def test_food_price
  assert_equal(2, @food.price)
end

def test_rejuvenation
  assert_equal(1, @food.rejuvenation_level)
end


end
