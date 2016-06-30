require_relative "asteroid"
class AsteroidSmall < Asteroid
 attr_accessor :x

  def move!
    @x -= 20
  end

end
