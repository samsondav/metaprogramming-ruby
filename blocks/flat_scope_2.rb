my_var = "Success"

MyClass = Class.new do
  # now we can print my_var here...
  puts "#{my_var} in the class definition!"

  def my_method
    # ...but how can we print it here?
  end
end
