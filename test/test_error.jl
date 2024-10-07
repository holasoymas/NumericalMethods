using Test
using NumericalMethods.Error

@testset "Absolute Error test" begin

  err::Float64 = Error.a_error(0.0, 0.0000007)
  println(err)
  @test err == 7e-7
end
