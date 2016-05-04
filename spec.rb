require_relative 'route'

describe "Traveling Salesman Problem" do
  let(:cities) { [[1, 2], [3, 4], [8, 7], [10, 12], [2, 4]] }

  it "calculates the distance between two points" do
    tsp = TSP.new(cities)
    expect(tsp.get_distance([0,3], [4,0])).to eq 5
  end

  # This test will be a little annoying
  it "calculates the distance between all cities" do
    tsp = TSP.new(cities)
    expect(tsp.get_total_route_distance(cities)).to be_within(0.9).of(32)
  end

  # Provided test from rubeque http://www.rubeque.com/problems/the-traveling-salesman
  it "determines the shortest route" do
    tsp = TSP.new(cities)
    answer_route = [[3, 4], [8, 7], [10, 12], [2, 4], [1, 2]]

    expect(tsp.route == answer_route || tsp.route == answer_route.reverse).to be(true)
  end
end
