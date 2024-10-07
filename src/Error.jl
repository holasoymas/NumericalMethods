module Error

export a_error, r_error, p_error

"""
a_error(true_val::Float64, approx_val::Float64) -> Float64

Calculate the absolute error between the true value and the approximate value.

# Arguments
- `true_val::Float64`: The exact value.
- `approx_val::Float64`: The approximated value.

# Returns
- `Float64`: The absolute error.
"""
function a_error(true_val::Float64, approx_val::Float64)::Float64
  return abs(true_val - approx_val)
end

"""
r_error(true_val::Float64, approx_val::Float64) -> Float64

Calculate the relative error between the true value and the approximate value.

# Arguments
- `true_val::Float64`: The exact value.
- `approx_val::Float64`: The approximated value.

# Returns
- `Float64`: The relative error as a fraction of the true value.
"""

function r_error(true_val::Float64, approx_val::Float64)::Float64
  return abs(true_val - approx_val) / abs(true_val)
end


"""
p_error(true_val::Float64, approx_val::Float64) -> Float64

Calculate the percentage error between the true value and the approximate value.

# Arguments
- `true_val::Float64`: The exact value.
- `approx_val::Float64`: The approximated value.

# Returns
- `Float64`: The percentage error.
"""
function p_error(true_val::Float64, approx_val::Float64)::Float64
  return r_error(true_val, approx_val) * 100
end

end
