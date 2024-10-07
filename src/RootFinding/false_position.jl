"""
falsePosition(f::Function, a::Float64, b::Float64,tol::Float64=1e-7, max_iter::Int=100) -> Float64

Find the root of the function `f` within the interval `[a,b]` using False Position method.

# Arguments
- `f`: The function for which we want to find the root.
- `a`: The start of the interval.
- `b`: The end of the interval.
- `tol`: The tolerance for stopping the algorithm (default `1e-7`).
- `max_iter`: The maximum number of iterations (default `100`).

# Returns
- The approx. root of the function `f`.
"""

function false_position(f::Function, a::Float64, b::Float64, tol::Float64=1e-7, max_iter::Int=100)::Float64
  if f(a) * f(b) >= 0
    throw(ArgumentError("f(a) and f(b) must have different signs"))
  end

  for _ in 1:max_iter
    c = (a * f(b) - b * f(a)) / (f(b) - f(a))
    if abs(f(c)) < tol
      return c
    end

    if f(c) * f(a) < 0
      b = c
    else
      a = c
    end
  end
  throw(ArgumentError("Maximum iterations reached without finding root"))
end

