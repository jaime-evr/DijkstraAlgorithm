require 'pry'
require './graph'
require './node'
require './dijkstra'

describe Dijkstra do
  before do
    @g = Graph.new 6, 0, 5
    @g.set_nodes
    @g.set_current
    @d = Dijkstra.new @g
  end

  it 'should have a graph' do  
    @d.graph.should_not be nil
  end

  it 'should return unvisited set' do
    @d.get_unvisited_set.should_not be nil
  end

  it 'should get the current node' do
    node = @d.get_current_node
    node.current.should be true
  end

  it 'should get the shortest path' do
    @d.get_shortest_path
  end
end

describe Graph do
  let(:neighborhood) do
    [
      [{node: 2, val: 7}, {node: 3, val: 9}, {node: 6, val: 14}],
      [{node: 1, val: 7}, {node: 3, val: 10}, {node: 4, val: 15}],
      [{node: 1, val: 9}, {node: 2, val: 10}, {node: 4, val: 11}, {node: 6, val: 2}],
      [{node: 2, val: 15}, {node: 3, val: 11},{node: 5, val: 6}],
      [{node: 4, val: 6}, {node: 6, val: 9}],
      [{node: 5, val: 9}, {node: 3, val: 2},{node: 1, val: 14}]
    ]
  end

  before do
    @g = Graph.new 6, 0, 5
    @g.set_nodes
    @g.set_current
    @g.total.times do |index|
      @g.set_node_neighbors(index, neighborhood)
    end
  end

  it 'should set nodes' do
    @g.set_nodes
    @g.nodes.length.should eq 6
  end

  it 'should set the initial node' do
    @g.set_nodes
    @g.set_current
    @g.nodes[0].value.should eq 0
    @g.nodes[0].current.should be true
    @g.nodes[0].visited.should be true
  end

  it 'should set node neighbors' do
    @g.nodes[0].neighbors.should eq [{:node=>2, :val=>7}, {:node=>3, :val=>9}, {:node=>6, :val=>14}]
  end
end

describe Node do
end