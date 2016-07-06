require_relative "flying_item"
class Candy < FlyingItem
  attr_accessor :x, :y, :width, :height

  def self.image_path
    "assets/images/candy.png"
  end

  def move!
    @x -= 10
  end

  def points
    10
  end

end
