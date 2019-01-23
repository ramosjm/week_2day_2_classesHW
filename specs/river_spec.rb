require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")
require_relative("../bear.rb")

class RiverTest < MiniTest::Test

  def setup()
    @fish_1= Fish.new("Dave")
    @fish_2= Fish.new("Steve")
    @river = River.new("Amazon")
  end

  def test_can_create_river_class()
    assert_equal(River,@river.class())
  end
  def test_get_river_name()
      assert_equal("Amazon",@river.get_river_name())
  end
  def test_get_fish_array()
    assert_equal(0,@river.get_fish_array().count)
  end
  def test_add_fish()
    assert_equal(1,@river.add_fish_to_river(@fish_1).count)
  end
  def test_lose_fish()
    @river.add_fish_to_river(@fish_1)
    @river.lose_fish
    assert_equal(0,@river.get_fish_array.count)
  end



end
