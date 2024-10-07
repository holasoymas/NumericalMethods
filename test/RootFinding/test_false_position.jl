using Test
using NumericalMethods.RootFinding

@testset "FalsePosition(RootFinding) test" begin
  f = x -> x^3 - 5

  root::Float64 = RootFinding.bisection(f, 1.0, 2.0)
  println(root)
  @test abs(root - 1.7099759578) < 1.e-7

  @test abs(f(root) < 1e-7)
end
