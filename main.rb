require 'pry'
require './graph'
require './node'
require './dijkstra'

g = Graph.new 6, 0, 5

neighborhood = [
  [{node: 1, cost: 7}, {node: 2, cost: 9}, {node: 5, cost: 14}],
  [{node: 0, cost: 7}, {node: 2, cost: 10}, {node: 3, cost: 15}],
  [{node: 0, cost: 9}, {node: 1, cost: 10}, {node: 3, cost: 11}, {node: 5, cost: 2}],
  [{node: 1, cost: 15}, {node: 2, cost: 11},{node: 4, cost: 6}],
  [{node: 3, cost: 6}, {node: 5, cost: 9}],
  [{node: 4, cost: 9}, {node: 2, cost: 2},{node: 0, cost: 14}]
]

g.total.times do |index|
  g.set_node_neighbors(index, neighborhood)
end

puts g.nodes

d = Dijkstra.new(g)
unvisited = d.unvisited_set

current = d.current_node

puts "the minimum value is #{d.shortest_path}"
