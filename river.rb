class River

  def initialize(river_name)
    @river_name = river_name
    @fish_array = []
  end

  def get_river_name()
    return @river_name
  end
  def get_fish_array()
    return @fish_array
  end
  def add_fish_to_river(fish)
    return @fish_array << fish
  end
  def lose_fish
    return @fish_array.clear
  end


end
