class TSP

  attr_reader :cities

  def initialize(cities)
    @cities = cities
    @routes = cities.permutation.to_a
  end

  def get_distance(a, b)
    x_diff = (a[1] - b[1]).abs
    y_diff = (a[0] - b[0]).abs
    Math.hypot(x_diff, y_diff)
  end

  def get_total_distance()
    counter = 1
    total = get_distance([0,0], cities[0])
    until counter == cities.length
      total += get_distance(cities[counter - 1], cities[counter])
    end
  end

end

mr_salesmans_route = TSP.new([[0, 0], [1, 2], [3, 4], [8, 7], [10, 12], [2, 4]])
puts mr_salesmans_route.get_distance(mr_salesmans_route.cities[0], mr_salesmans_route.cities[1])
