require 'pry'
class Dijkstra
  attr_accessor :graph, :unvisited_set

  def initialize(graph)
    @graph = graph
    @unvisited_set = {}
  end

  def get_unvisited_set
    @graph.nodes.each do |index, node|
      @unvisited_set[index] = node unless node.visited == true
    end
    @unvisited_set
  end

  def get_current_node
    @graph.nodes.each { |index, n| return n if n.current == true }
  end
end
