class Bear
  def initialize(bear_name,bear_type)
    @bear_name = bear_name
    @bear_type = bear_type
    @food_array = []
  end

  def get_name()
    return @bear_name
  end
  def get_type()
    return @bear_type
  end
  def get_food()
    return @food_array
  end
  def add_fish(fish)
    @food_array<< fish
    return @food_array
  end

  def take_fish(fish_name)
      for fish in fish_name.get_fish_array()
        add_fish(fish)
      end
      fish.clear
  end



end
