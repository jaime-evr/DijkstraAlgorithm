class Graph
  attr_accessor :nodes, :total, :start, :finish

  def initialize(total, start, finish)
    @nodes = {}
    @total = total
    @start = start
    @finish = finish

    set_nodes
    set_current(start)
  end

  def set_nodes
    @total.times do |node|
      @nodes[node] = Node.new 9999
    end
  end

  def set_current(node)
    @nodes[node].value = 0
    @nodes[node].current = true
    @nodes[node].visited = true
  end

  def set_node_neighbors(index, neighborhood)
    @nodes[index].neighbors = neighborhood[index]
  end
end
