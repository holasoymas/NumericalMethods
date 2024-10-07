using Test
using NumericalMethods.RootFinding

@testset "Newton Raphson(RootFinding) test" begin
  f::Function = x -> x^3 - 5
  f2::Function = x -> x^2 - 3x

  root::Float64 = RootFinding.newton_raphson(f, 1.0)
  root2::Float64 = RootFinding.newton_raphson(f, 1.0)
  println(root)
  @test abs(root - 1.7099759578) < 1.e-7
  @test abs(root2 - 1.7099759578) < 1.e-7

  @test abs(f(root) < 1e-7)
  @test abs(f(root2) < 1e-7)
end
