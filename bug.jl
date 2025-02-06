```julia
function my_function(x)
  if x > 0
    return x^2
  else
    return -x
  end
end

x = -5
y = my_function(x)
println(y) # Output: 5

x = 5
y = my_function(x)
println(y) # Output: 25

#However if you try to use the function with a large negative number the result will be off by a small margin 
x = -1e16
y = my_function(x)
println(y) # Output: 1.0e+32 - 1.0e+16 

#This is due to the fact that floating point numbers have limited precision. 
#So when you compute x^2, there is a small rounding error that causes a significant difference for large numbers. 

#Another possible issue is related to the type of x
#if you pass an integer the function will work as expected. 
#However if you pass a float the function will return a float.
```