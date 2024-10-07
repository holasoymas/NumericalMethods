function lagrange(x::Vector{T}, y::Vector{T}, val::T) where {T<:Number}
  n::Int = length(x)
  if n != length(y)
    throw(ArgumentError("Vector x, y must be of the same size"))
  end

  result::T = zero(T)  # Initialize the result with 0 of generic type 

  for i in 1:n
    term::T = y[i]
    for j in 1:n
      if j != i
        term *= (val - x[j]) / (x[i] - x[j])
      end
    end
    result += term
  end
  return result
end

# Example usage
x::Vector{Float64} = [-1.0, 0.0, 2.0, 3.0]
y::Vector{Float64} = [-8.0, 3.0, 1.0, 2.0]

lag::Float64 = lagrange(x, y, 4.0)
println(lag)

