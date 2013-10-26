require './node'
require './dijkstra'

class Graph
  attr_accessor :nodes, :total, :start, :finish

  def initialize(total, start, finish)
    @nodes = {}
    @total = total
    @start = start
    @finish = finish
  end

  def set_nodes
    @total.times do |node|
      @nodes[node] = Node.new -1
    end
  end

  def set_initial
    @nodes[@start].initial = true
    @nodes[@start].value = 0
    @nodes[@start].current = true
    @nodes[@start].visited = true
  end

  def set_node_neighbors(index, neighborhood)
    neighbors = neighborhood[index]
    @nodes[index].neighbors = neighbors
  end
end