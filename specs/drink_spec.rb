require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def setup()
    @drink = Drink.new("Stout", 4)
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

end
