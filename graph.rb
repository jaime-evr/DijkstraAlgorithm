class Node
  attr_accessor :current, :visited, :neighbors, :value

  def initialize(value)
    @value =  value
    @visited = false
    @neighbors = {}
    @current = false
    @initial = false
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

  def set_initial(node)
    node.initial = true
  end

  private
  def get_node_value(node)
    puts "Value for node #{node+1}"
    gets.chomp
  end
end

g = Graph.new 5, 1, 5
g.set_values

##class Dijkstra
##  def initialize(graph)
##end