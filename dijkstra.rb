class Dijkstra
  attr_accessor :graph, :unvisited_set

  def initialize(graph)
    @graph = graph
    @unvisited_set = []
  end

  def get_unvisited_set
    @graph.nodes.each do |g|
      puts @graph.nodes[g]
      @unvisited_set << g if g.visited == false
    end
  end
end
