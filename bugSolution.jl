```julia
function my_function_improved(x::Real)
  if x > 0
    return x^2
  elseif x < 0
    return -x
  else
    return 0
  end
end

# Test cases
x = -5
y = my_function_improved(x)
println(y) # Output: 5

x = 5
y = my_function_improved(x)
println(y) # Output: 25

x = -1e16
y = my_function_improved(x)
println(y) # Output: 1.0e+16

#Demonstrates improved type stability
x = 5.0
println(my_function_improved(x))

x = 5
println(my_function_improved(x))
```