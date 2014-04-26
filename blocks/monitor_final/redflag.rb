setups = []
events = {}
Kernel.send :define_method, :event do |name, &block|
  events[name] = block
end

Kernel.send :define_method, :setup do |&block|
  setups << block
end

Kernel.send :define_method, :each_event do |&block|
  events.each do |name, event|
    block.call name, event
  end
end

Kernel.send :define_method, :each_setup do |&block|
  setups.each do |setup|
    block.call setup
  end
end

# setup instance variables
Dir.glob('*events.rb').each do |file|
  load file
  each_event do |name, conditional|
    env = Object.new # create cleanroom
    each_setup do |s|
      env.instance_eval(&s)
    end
    puts "ALERT: #{name}" if env.instance_eval &conditional
  end
end
