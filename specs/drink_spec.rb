require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def setup()
    @drink = Drink.new("Stout", 4, 1)
  end

  def test_new_drink()
    assert_equal(Drink, @drink.class)
  end

  def test_drink_name()
    assert_equal("Stout", @drink.name)
  end

  def test_drink_price()
    assert_equal(4, @drink.price)
  end

  def test_drink_alcohol_level()
    assert_equal(1, @drink.alcohol_level)
  end
end
