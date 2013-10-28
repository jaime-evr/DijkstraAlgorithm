require 'pry'
require './graph'
require './node'
require './dijkstra'

describe Dijkstra do
  neighborhood = [
    [{node: 1, cost: 7}, {node: 2, cost: 9}, {node: 4, cost: 14}],
    [{node: 0, cost: 7}, {node: 2, cost: 10}, {node: 3, cost: 15}],
    [{node: 0, cost: 9}, {node: 1, cost: 10}, {node: 3, cost: 11}, {node: 6, cost: 2}],
    [{node: 1, cost: 15}, {node: 2, cost: 11},{node: 4, cost: 6}],
    [{node: 3, cost: 6}, {node: 5, cost: 9}],
    [{node: 4, cost: 9}, {node: 2, cost: 2},{node: 0, cost: 14}]
  ]

  before do
    @g = Graph.new 6, 0, 5
    @g.total.times do |index|
      @g.set_node_neighbors(index, neighborhood)
    end
    @d = Dijkstra.new @g
  end

  it 'should have a graph' do  
    @d.graph.should_not be nil
  end

  it 'should return unvisited set' do
    @d.unvisited_set.should_not be nil
  end

  it 'should get the current node' do
    node = @d.current_node
    node.current.should be true
  end

  it 'should get the shortest path' do
    @d.shortest_path
  end
end

describe Graph do
  let(:neighborhood) do
    [
      [{node: 1, cost: 7}, {node: 2, cost: 9}, {node: 4, cost: 14}],
      [{node: 0, cost: 7}, {node: 2, cost: 10}, {node: 3, cost: 15}],
      [{node: 0, cost: 9}, {node: 1, cost: 10}, {node: 3, cost: 11}, {node: 6, cost: 2}],
      [{node: 1, cost: 15}, {node: 2, cost: 11},{node: 4, cost: 6}],
      [{node: 3, cost: 6}, {node: 5, cost: 9}],
      [{node: 4, cost: 9}, {node: 2, cost: 2},{node: 0, cost: 14}]
    ]
  end

  before do
    @g = Graph.new 6, 0, 5
    @g.total.times do |index|
      @g.set_node_neighbors(index, neighborhood)
    end
  end

  it 'should current node' do
    @g.set_current(5)
    @g.nodes[5].current.should eq true
  end

  it 'should set the initial node' do
    @g.nodes[0].value.should eq 0
    @g.nodes[0].current.should be true
    @g.nodes[0].visited.should be true
  end

  it 'should set node neighbors' do
    @g.nodes[0].neighbors.should eq [{:node=>1, :cost=>7}, {:node=>2, :cost=>9}, {:node=>4, :cost=>14}]
  end
end

describe Node do
end
