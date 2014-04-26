require 'highline'

hl = HighLine.new
friends = hl.ask("Friends?", proc {|s| s.split(', ') })
puts "You're friends with : #{friends.inspect}"
