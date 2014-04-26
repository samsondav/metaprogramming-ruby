require 'markaby'

html = Markaby::Builder.new do
  head { title "My wonderful home page" }
  body do
    h1 "Welcome to my home page!"
    b "My hobbies:"
    ul do
      li "juggling"
      li "knitting"
      li "metaprogramming"
    end
  end
end
