using Geometric, Test, LinkedList

@testset "test intersection" begin
  P3 = (x = -0.5, y = 3)
  P4 = (x = 1.5, y = 0.5)

  P1 = (x = -4, y = -2)
  P2 = (x = 4, y = 2)

  @test intersection(P1, P2, P3, P4) == true
end

@testset "test cvxhull" begin
  pointsarray = [
    (x = -4, y = -2),
    (x = -3, y = -1),
    (x = -2, y = -4),
    (x = -3, y = 2),
    (x = -3, y = 4),
    (x = 0, y = 1),
    (x = 1, y = 2),
    (x = 0, y = -2),
    (x = 2, y = 0),
    (x = 4, y = 1)
  ]

  points = List(Point)
  for point in pointsarray
    push!(points, point)
  end

  @show cvxhull(points)
end