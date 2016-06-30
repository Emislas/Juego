require_relative "flying_item"
class Candy < FlyingItem
  attr_accessor :x

  def self.image_path
    "assets/images/candy.png"
  end

  def move!
    @x -= 10
  end

end
