require_relative "asteroid"
class AsteroidSmall < Asteroid
 

  def move!
    @x -= 20
  end

end
