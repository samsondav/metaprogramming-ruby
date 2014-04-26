class MyClass
  def my_method
    'my_method()'
  end
end

class MySubclass < MyClass
end

obj = MySubclass.new
obj.my_method()
