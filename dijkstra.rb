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
end
