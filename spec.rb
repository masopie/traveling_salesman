require_relative 'route'

describe "Traveling Salesman Problem" do
  let(:cities) { [[1, 2], [3, 4], [8, 7], [10, 12], [2, 4]] }

  it "calculates the distance between two points" do
    tsp = TSP.new(cities)
    expect(tsp.get_distance([0,3], [4,0])).to eq 5
  end

  it 'calculates length of the best route' do
    tsp = TSP.new(cities)
    p tsp.dist
    # expect(tsp.dist.round(2)).to eq 32.00
    expect(tsp.dist).to be_within(0.9).of(32)
  end

  # Provided test from rubeque http://www.rubeque.com/problems/the-traveling-salesman
  it "determines the shortest route" do
    tsp = TSP.new(cities)
    answer_route = [[3, 4], [8, 7], [10, 12], [2, 4], [1, 2]]

    expect(tsp.find_best_route == answer_route || tsp.find_best_route == answer_route.reverse).to be(true)
  end
end
