class Dijkstra
  attr_accessor :graph, :unvisited_set, :total_value

  def initialize(graph)
    @total_value = 0
    @graph = graph
    @unvisited_set = {}
  end

  def unvisited_set
    @graph.nodes.each do |index, node|
      @unvisited_set[index] = node unless node.visited == true
    end
    @unvisited_set
  end

  def current_node
    @graph.nodes.each { |index, n| return n if n.current == true }
  end

  def shortest_path
    evaluate_node(current_node) 
  end

  def evaluate_node(node)
    node.neighbors.each do |neighbor|
      value = neighbor[:cost] + @total_value
      if value < @graph.nodes[neighbor[:node]].value do
        @graph.nodes[neighbor[:node]].value = value
      end
    end
  end

end
