require 'pry'

# BUGGY CODE
class Roulette
  def method_missing(name, *args)
    # initialize number out of loop scope
    number = 0
    person = name.to_s.capitalize
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
    "#{person} got a #{number}"
  end
end
