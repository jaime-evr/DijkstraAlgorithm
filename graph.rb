class Graph
  attr_accessor :nodes, :start, :finish

  def initialize(start, finish, graph)
    @nodes = {}
    @start = start
    @finish = finish

    build_graph(graph)
    nodes[start].value = 0
    set_current(start)
  end

  def build_graph(graph)
    graph.each_with_index do |neighbors, index|
      nodes[index] = Node.new(neighbors)
    end
  end

  def set_current(node)
    nodes[node].current = true
  end

  def set_visited(node)
    nodes[node].visited = true
  end
end
