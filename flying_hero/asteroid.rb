require_relative "flying_item"
class Asteroid < FlyingItem
  attr_accessor :x, :y, :width, :height

  def self.image_path
    "assets/images/asteroid.png"
  end

  def initialize(window)
    super
    @height = @image.height * self.class.scale_x
    @width = @image.width * self.class.scale_y
    @y = Random.rand(window.height - @height)
    @x = window.width - 100

  end
  def draw
    @image.draw(@x, @y, 1, self.class.scale_x, self.class.scale_y)
  end

  def points
    -10
  end

  def self.scale_x
    1
  end

  def self.scale_y
    1
  end

end
