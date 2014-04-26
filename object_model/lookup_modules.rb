module M
  def my_method
    'M#my_method()'
  end
end

class C
  include M
end

class D < C
end
