require_relative "flying_item"
class Asteroid < FlyingItem

  def self.image_path
    "assets/images/asteroid.png"
  end

  def initialize(window)
    super
    @y = Random.rand(window.height - @height)
    @x = window.width - 100

    @scale_x = 1
    @scale_y = 1
  end

  def draw
    @image.draw(@x, @y, 1, @scale_x, @scale_y)
  end

end
