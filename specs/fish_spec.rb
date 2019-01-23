require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Norman")
  end

  def test_can_crate_fish()
    assert_equal(Fish,@fish.class)
  end

  def test_fish_name()
    assert_equal("Norman",@fish.get_name())
  end
end
