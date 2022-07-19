using Geometric, Test

@testset "test intersection" begin
  P3 = (x = -0.5, y = 3)
  P4 = (x = 1.5, y = 0.5)

  P1 = (x = -4, y = -2)
  P2 = (x = 4, y = 2)

  @test intersection(P1, P2, P3, P4) == true
end

