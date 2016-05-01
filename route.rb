class TSP

  attr_reader :cities

  def initialize(cities)
    @cities = cities
    @possible_routes = cities.permutation.to_a
  end

  def get_distance(a, b)
    x_diff = (a[1] - b[1]).abs
    y_diff = (a[0] - b[0]).abs
    Math.hypot(x_diff, y_diff)
  end

  def get_total_distance(possible_route)
    counter = 1
    # total grabs distance from 0,0 to initial element
    total = get_distance([0,0], possible_route[0])
    until counter == possible_route.length
      total += get_distance(possible_route[counter - 1], possible_route[counter])
      counter += 1
    end
    # after all distances are added, have to add distance from last index back to 0,0
    total + get_distance([0,0], cities[-1])
  end

  def find_best_route
  end

end

mr_salesmans_route = TSP.new([[1, 2], [3, 4], [8, 7], [10, 12], [2, 4]])
puts mr_salesmans_route.get_distance(mr_salesmans_route.cities[0], mr_salesmans_route.cities[1])
puts mr_salesmans_route.get_total_distance(mr_salesmans_route.cities)
