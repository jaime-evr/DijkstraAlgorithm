DijkstraAlgorithm
=================

run test with:
	rake

run sample with:

	rake sample


The shortest path - Dijkstra's algorithm -, this is an algorith to find the shortest path between nodes, its refered as a graph search path.

Each node is connected with a set of nodes, each connection has a value which represent its cost, the goal of this algorithm is to go from a start node to the end node.

Look at the following graph, show how nodes are connected between them and also shows the solution for this specific problem.

The rules to implement for this algorith are: Let the node at which we are starting be called the initial node. Let the distance of node Y be the distance from the initial node to Y. Dijkstra's algorithm will assign some initial distance values and will try to improve them step by step.

Assign to every node a tentative distance value: set it to zero for our initial node and to infinity for all other nodes.

Mark all nodes unvisited. Set the initial node as current. Create a set of the unvisited nodes called the unvisited set consisting of all the nodes except the initial node.

For the current node, consider all of its unvisited neighbors and calculate their tentative distances. For example, if the current node A is marked with a distance of 6, and the edge connecting it with a neighbor B has length 2, then the distance to B (through A) will be 6+2=8. If this distance is less than the previously recorded tentative distance of B, then overwrite that distance. Even though a neighbor has been examined, it is not marked as "visited" at this time, and it remains in the unvisited set.

When we are done considering all of the neighbors of the current node, mark the current node as visited and remove it from the unvisited set. A visited node will never be checked again.

If the destination node has been marked visited (when planning a route between two specific nodes) or if the smallest tentative distance among the nodes in the unvisited set is infinity (when planning a complete traversal), then stop. The algorithm has finished.

Select the unvisited node that is marked with the smallest tentative distance, and set it as the new "current node" then go back to step 3.

Implement a solution that

- Define a data structure to define a graph - nodes and relationship -.
- Implement all 6 rules for this algorithm.
- Implementation should include tests and a rakefile to run tests.
- Implementation should include a rake task to run the given example.
- Implement a CLI to be used from command line, it should be able to receive a graph.
- Implemnte a Web interface to receive a graph and resolve it.