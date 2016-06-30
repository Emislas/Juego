require "gosu"
class FlyingItem


  def initialize(window)
    @image = Gosu::Image.new(self.class.image_path)
    @width = @image.width
    @height = @image.height
    reset!(window)
  end

  def draw
    @image.draw(@x, @y, 1, 1, 1)
  end

  def reset!(window)
    @y = Random.rand(window.height - @height)
    @x = window.width
  end


end
