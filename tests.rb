require 'pry'
require './graph'
require './node'
require './dijkstra'

describe Dijkstra do
  before do
    @g = Graph.new 6, 0, 5
    @g.set_nodes
    @g.set_initial
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
end

describe Graph do
  before do
    @g = Graph.new 6, 0, 5
  end

  it 'should set nodes' do
    @g.set_nodes
    @g.nodes.length.should eq 6
  end

  it 'should set the initial node' do
    @g.set_nodes
    @g.set_initial
    @g.nodes[0].initial.should be true
    @g.nodes[0].value.should eq 0
    @g.nodes[0].current.should be true
    @g.nodes[0].visited.should be true
  end
end

describe Node do
end