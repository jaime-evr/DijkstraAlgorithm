class Node
  attr_accessor :value, :initial, :current, :visited, :neighbors

  def initialize(value)
    @value =  value
    @initial = false
    @current = false
    @visited = false
    @neighbors = {}
  end
end

class Graph
  attr_accessor :graph, :total, :start, :finish

  def initialize(total, start, finish)
    @graph = {}
    @total = total
    @start = start
    @finish = finish
  end

  def set_values
    @total.times do |node|
      value = get_node_value(node)
      @graph[node] = Node.new value
    end
  end

  def set_initial
    @graph[@start].initial = true
    @graph[@start].value = 0
    @graph[@start].current = true
  end

  private
  def get_node_value(node)
    puts "Value for node #{node+1}"
    gets.chomp
  end
end

class Dijkstra
  attr_accessor :graph, :unvisited_set

  def initialize(graph)
    @graph = graph
    @unvisited_set = []
  end

  def get_unvisited_set
    @graph.graph.each do |g|
      @unvisited_set << g if g.visited == false
    end
  end
end

g = Graph.new 5, 1, 5
g.set_values
g.set_initial

d = Dijkstra.new (g)
#d.get_unvisited_set