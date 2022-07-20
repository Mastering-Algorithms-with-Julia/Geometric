using Geometric, Test, LinkedList

@testset "test intersection" begin
  P3 = Point(-0.5, 3)
  P4 = Point(1.5, 0.5)

  P1 = Point(-4, -2)
  P2 = Point(4, 2)

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
  ] |> points -> map(point -> Point(point.x, point.y), points)
    

  points = List(Point)
  for point in pointsarray
    push!(points, point)
  end

  @show cvxhull(points)
end