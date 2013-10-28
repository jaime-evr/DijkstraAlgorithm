class Dijkstra
  attr_accessor :graph, :unvisited_set, :total_value

  def initialize(graph)
    @total_value = 0
    @graph = graph
    @unvisited_set = {}

    @graph.nodes[@graph.start].value = 0
  end

  def get_unvisited_set
    @graph.nodes.each do |index, node|
      if node.visited == true
        @unvisited_set.delete(index)
      else
        @unvisited_set[index] = node unless node.visited == true
      end
    end
  end

  def current_node
    @graph.nodes.each { |index, n| return n if n.current == true }
  end

  def shortest_path
    @graph.total.times do |index|
      get_unvisited_set
      evaluate_neighbors(current_node)
      if finished?
        return @total_value 
      end
    end
  end

  private
  def evaluate_neighbors(node)
    best_cost = 9999
    next_node = nil

    node.neighbors.each do |neighbor|
      if @unvisited_set[neighbor[:node]]
        if neighbor[:cost] < best_cost
          next_node = neighbor[:node] 
          best_cost = neighbor[:cost]
        end

        value = neighbor[:cost] + @total_value
        if value < @graph.nodes[neighbor[:node]].value
          @graph.nodes[neighbor[:node]].value = value
        end
      end
    end

    @total_value = @graph.nodes[next_node].value
    node.current = false
    @graph.set_current(next_node)
  end

  def finished?
    @graph.nodes[@graph.finish-1] == current_node
  end
end
