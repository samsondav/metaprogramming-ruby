class MyClass < Array
  def my_method
    'Hello!'
  end
end

# rewrite without using the class keyword

MyClass = Class.new(Array) do
  def my_method
    'Hello!'
  end
end
