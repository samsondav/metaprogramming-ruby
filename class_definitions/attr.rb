class MyClass
  def my_attribute=(value)
    @my_attribute = value
  end

  def my_attribute
    @my_attribute
  end
end

# replaced by

class MyClass
  attr_accessor :my_attribute
end
