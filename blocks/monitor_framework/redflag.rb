def event(name, &block)
  @events[name] = block
end

def setup(&block)
  @setups << block
end

# setup instance variables
Dir.glob('*events.rb').each do |file|
  @events = {}
  @setups = []
  load file
  @events.each do |name, conditional|
    env = Object.new # create cleanroom
    @setups.each do |s|
      env.instance_eval(&s)
    end
    puts "ALERT: #{name}" if conditional
  end
end
