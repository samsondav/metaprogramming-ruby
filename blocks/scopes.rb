require 'pry'

v1 = 1

class MyClass
  v2 = 2
  local_variables

  def my_method
    v3 = 3
    local_variables
  end

  local_variables
end

obj = MyClass.new
obj.my_method
obj.my_method
local_variables
binding.pry
