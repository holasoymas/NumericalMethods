using Calculus

"""
newton_raphson(f::Function, x0::Float64; tol::Float64=1e-7, max_iter::Int=100) -> Float64

Finds the root of the function `f` using the Newton-Raphson Method.

# Arguments
- `f`: The function for which we want to find the root.
- `x0`: The initial guess for the root.
- `tol`: The tolerance for stopping the algorithm (default is `1e-7`).
- `max_iter`: The maximum number of iterations (default is `100`).

# Returns
- The approximate root of the function `f`.
"""

function newton_raphson(f::Function, x0::Float64, tol::Float64=1.e-7, max_iter::Int=100)::Float64
  x::Float64 = x0
  for _ in 1:max_iter
    fx = f(x)
    dfx = derivative(f, x)
    if dfx == 0
      throw("Derivative is 0, No solution found")
    end
    new_x = x - fx / dfx
    if f(new_x) < tol
      return new_x
    end
    x = new_x
  end
  throw(ArgumentError("Maximum iteration reach without finding 0"))
end

function derivative(f::Function, val::Float64)
  dfx::Function = Calculus.derivative(f)
  return dfx(val)
end
