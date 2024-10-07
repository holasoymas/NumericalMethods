module NumericalMethods

include("RootFinding/root_finding.jl")
include("Error.jl")

# x::Float64 = RootFinding.newton_raphson(x -> x^2 - 3x, 1.0)
# y::Float64 = RootFinding.bisection(x -> x^2 - 3x, 1.0, 4.0)
# println(y)
# println("Newon $x")

# f::Function = x -> x^3 - 5
# root::Float64 = RootFinding.newton_raphson(f, 5.0)

# println(root)

x::Tuple{Int,Float64,String} = (1, 2, 3)
println(x)

end # module NumericalMethods
