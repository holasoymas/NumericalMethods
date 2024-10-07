
function newton_div_diff(x::Vector{T}, y::Vector{T}, val::T) where {T<:Number}
  n::UInt = length(x)
  if n != length(y)
    throw(ArgumentError("Vector x,y must be of same length"))
  end

  # newton_table::T = zero(T, n::Float64, n::Float64)
  newton_table::Matrix{T} = Matrix{T}(undef, n, n)

  #first fill the first column 
  for i in 1:n
    newton_table[i, 1] = y[i]
  end

  for j in 2:n
    for i in 1:(n-j+1)
      newton_table[i, j] = (newton_table[i+1, j-1] - newton_table[i, j-1]) / (x[i+j-1] - x[i])
    end
  end
  result = newton_table[1, 1]  # The first term of the polynomial
  product_term = 1.0  # To keep track of the product (x - x[i])

  for i in 1:(n-1)
    product_term *= (val - x[i])  # used for accumucaliting (x-x1) (x-x2)(x-xn)
    result += newton_table[1, i+1] * product_term # prev res + product_term(accumulated val) * higher degree div diff 
  end
  return result
end

x::Vector{Float64} = [5.0, 6.0, 9.0, 11.0]
y::Vector{Float64} = [12.0, 13.0, 14.0, 16.0]

n::Float64 = newton_div_diff(x, y, 10.0)
println(n)
