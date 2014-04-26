def my_method
  # this variable is never seen by the block because it is not explicitly passed by yield()
  x = "Goodbye"
  yield("cruel")
end

# this variable makes up part of the environment in which the block is defined, so the block can use it
x = "Hello"

puts my_method {|y| "#{x}, #{y} world" } # |y| is the only variable taken from inside function
