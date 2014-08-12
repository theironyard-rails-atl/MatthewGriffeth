class Averager
  def initialize (x,y)
    @x = x.to_i
    @y = y.to_i
  end
  def average
    avrg = ((@x + @y) / 2)
    return avrg
  end
end
