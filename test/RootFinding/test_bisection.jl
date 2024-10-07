using Test
using NumericalMethods.RootFinding

@testset "Bisection(RootFinding) test" begin
  f = x -> x^3 - 5

  # Test 1: Check if root is approximately correct
  root::Float64 = RootFinding.bisection(f, 1.0, 2.0)
  println(root)
  @test abs(root - 1.7099759578) < 1e-7

  # Test 2: Check if the function value at the root is near 0
  @test abs(f(root)) < 1e-7
end
