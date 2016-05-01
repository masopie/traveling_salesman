require_relative 'route'

describe "Traveling Salesman Problem" do
  let(:cities) { [[1, 2], [3, 4], [8, 7], [10, 12], [2, 4]] }

  it 'calculates the distance between two points' do
    tsp = TSP.new(cities)
    expect(tsp.get_distance([0,3], [4,0])).to eq 5
  end

  
end
