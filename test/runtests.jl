using Geometric, Test, Graph

@testset "test intersection" begin
  P3 = (x = -0.5, y = 3)
  P4 = (x = 1.5, y = 0.5)

  P1 = (x = -4, y = -2)
  P2 = (x = 4, y = 2)

  @test intersection(P1, P2, P3, P4) == true
end

@testset "test dijkstra" begin
  graph = UnDirectedGraph(Char)
  for vertex in 'A':'G'
    insertVertex!(graph, vertex)
  end

  insertEdge!(graph, 'A', 'B', 5)
  insertEdge!(graph, 'A', 'C', 2)
  insertEdge!(graph, 'B', 'D', 1)
  insertEdge!(graph, 'B', 'E', 6)
  insertEdge!(graph, 'C', 'D', 6)
  insertEdge!(graph, 'C', 'F', 8)
  insertEdge!(graph, 'D', 'E', 1)
  insertEdge!(graph, 'D', 'F', 2)
  insertEdge!(graph, 'E', 'G', 7)
  insertEdge!(graph, 'F', 'G', 3)

  @show dijkstra(graph, 'A', 'G')
end