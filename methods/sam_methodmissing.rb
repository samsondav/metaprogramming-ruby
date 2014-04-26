class Computer
  def turn_on
    p "whirrr, buzz!"
  end
end

class Keyboard < Computer
  def method_missing(*args)
    super if !self.respond_to?("turn_on")
    turn_on
  end
end
