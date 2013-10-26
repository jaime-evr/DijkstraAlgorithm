class Node
  attr_accessor :value, :initial, :current, :visited, :neighbors

  def initialize(value)
    @value =  value
    @initial = false
    @current = false
    @visited = false
    @neighbors = []
  end
end

class Graph
  attr_accessor :nodes, :total, :start, :finish

  def initialize(total, start, finish)
    @nodes = {}
    @total = total
    @start = start
    @finish = finish
  end

  def set_values
    @total.times do |node|
      value = set_node_value(node)
      @nodes[node] = Node.new value
      @nodes[node].neighbors = 
    end
  end

  def set_initial
    @nodes[@start].initial = true
    @nodes[@start].value = 0
    @nodes[@start].current = true
  end

  private
  def set_node_value(node)
    puts "Value for node #{node+1}"
    gets.chomp
  end

  private
  def set_node_neighbors(node)
    puts "neighbors of node #{node+1}"
    neighbors = gets.chomp
    neighbors = neighbors.slplit(",")
  end
end

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

g = Graph.new 5, 1, 5
g.set_values
g.set_initial

d = Dijkstra.new(g)
d.get_unvisited_set