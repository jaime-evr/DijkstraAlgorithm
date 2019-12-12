require 'pry'
require './graph'
require './node'
require './dijkstra'

graph_data = [
  [{node: 1, cost: 7}, {node: 2, cost: 9}, {node: 5, cost: 14}],
  [{node: 0, cost: 7}, {node: 2, cost: 10}, {node: 3, cost: 15}],
  [{node: 0, cost: 9}, {node: 1, cost: 10}, {node: 3, cost: 11}, {node: 5, cost: 2}],
  [{node: 1, cost: 15}, {node: 2, cost: 11},{node: 4, cost: 6}],
  [{node: 3, cost: 6}, {node: 5, cost: 9}],
  [{node: 4, cost: 9}, {node: 2, cost: 2},{node: 0, cost: 14}]
]

graph = Graph.new(0, 4, graph_data)

puts graph.nodes

dijkstra = Dijkstra.new(graph)

puts "\nthe minimum value is #{dijkstra.shortest_path}"
