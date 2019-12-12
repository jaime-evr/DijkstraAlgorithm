class Dijkstra
  attr_accessor :graph, :total_value

  def initialize(graph)
    @total_value = 0
    @graph = graph
  end

  def unvisited_set
    @graph.nodes.reject { |_, node| node.visited }
  end

  def current_node
    @graph.nodes.select { |_, node| node.current == true }
  end

  def shortest_path
    loop do
      print "-> #{current_node.keys.first} "
      return current_node.values.first.value if finished?
      evaluate_neighbors(current_node)
    end
  end

  private

  def calculate_neighbors_distance(node)
    node.neighbors.each do |neighbor|
      next unless unvisited_set[neighbor[:node]]

      cost = neighbor[:cost]
      neighbor_node = graph.nodes[neighbor[:node]]

      if node.value + cost < neighbor_node.value
        neighbor_node.value = cost + node.value
      end
    end
  end

  def shortest_neighbor(node)
    node.neighbors.filter { |neighbor| unvisited_set[neighbor[:node]] }
      .min_by { |neighbor| neighbor[:cost] }
  end

  def evaluate_neighbors(node_hash)
    node = node_hash.values.first


    calculate_neighbors_distance(node)
    next_node_index = shortest_neighbor(node)[:node]
    next_node = graph.nodes[next_node_index]

    node.current = false
    node.visited = true
    next_node.current = true
    @total_value = next_node.value
  end

  def finished?
    @graph.nodes[@graph.finish] == current_node.values.first
  end
end
