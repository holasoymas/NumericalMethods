module RootFinding

export bisection, false_position, newton_raphson

# Include the function files for Bisection and False Position
include("bisection.jl")
include("false_position.jl")
include("newton_raphson.jl")

end # module RootFinding
