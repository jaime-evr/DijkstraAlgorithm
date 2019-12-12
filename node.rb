class Node
  attr_accessor :value, :current, :visited, :neighbors

  def initialize(neighbors, value = 9999)
    @value =  value
    @current = false
    @visited = false
    @neighbors = neighbors
  end
end
