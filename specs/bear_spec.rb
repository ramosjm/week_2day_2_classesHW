require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test
  def setup()
    @bear = Bear.new("Pudsey","Yellow Bear")
    @fish_1 = Fish.new("Dory")
    @Fish_2 = Fish.new("Nemo")
  end
  def test_can_create_bear
    assert_equal(Bear,@bear.class)
  end
  def test_get_name()
    assert_equal("Pudsey",@bear.get_name())
  end
  def test_get_type()
    assert_equal("Yellow Bear",@bear.get_type)
  end
  def test_get_food()
    assert_equal([],@bear.get_food())
  end
  def test_add_fish()
    assert_equal(1,@bear.add_fish(@fish_1).count)
  end
  def test_take_fish_from_river()
    @river= River.new("Tweed")
    @river.add_fish_to_river(@fish_1)
    @bear.take_fish(@fish_1)
    assert_equal(1,@bear.get_food.count)
    assert_equal(0,@river.get_fish_array.count)
  end



end
