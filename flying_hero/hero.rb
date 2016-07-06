require 'gosu'

class Hero
attr_accessor :y, :height

  def initialize
    @sprites = Gosu::Image::load_tiles('assets/images/cat.png', 847/6,87, tileable:false)

     @x = 10
     @y = 200
     @width = @sprites.first.width
     @height = @sprites.first.height

	end

  def draw
    sprite = @sprites[Gosu::milliseconds / 75 % @sprites.size]

    sprite.draw(@x, @y, 1)

  end

  def move_up!
    @y -= 5
  end

  def move_down!
    @y += 5
  end

  def move_left!
    @x -= 5
  end

  def move_right!
    @x += 5
  end

  def bumped_into?(object)
    hero_left = @x
    hero_right = @x + @width
    hero_top = @y
    hero_bottom  = @y + @height

    object_top = object.y
    object_bottom = object.y + object.height
    object_left = object.x
    object_right = object.x + object.width

    if (hero_top > object_bottom) || (hero_bottom < object_top) || (hero_left > object_right) || (hero_right < object_left)
      false
    else
      true
    end
  end
end
