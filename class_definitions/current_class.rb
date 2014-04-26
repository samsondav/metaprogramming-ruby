class MyClass
  def method_one
    def method_two
      'Hello!'
    end
  end
end

obj = MyClass.new
obj.method_one
obj.method_two # => "Hello!"
