def my_method(greeting)
  puts "#{greeting}, #{yield}!"
end

my_proc = proc { "Sam" }
my_method("Hello", &my_proc)
