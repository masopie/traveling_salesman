class TSP

  def initialize(cities)
    @cities = cities
  end

  def get_distance(a, b)
    x_diff = (a[1] - b[1]).abs
    y_diff = (a[0] - b[0]).abs
    Math.hypot(x_diff, y_diff)
  end

end
