module Printable
  def print
    # FIXME overwrites print method from Document
    puts "Printable#print"
  end

  def prepare_cover
    #...
  end
end

module Document
  def print_to_screen #FIXME calls wrong print() method
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
    #...
  end

  def print
    puts "Document#print"
  end
end

class Book
  include Document
  include Printable
  #...
end


## SOLUTION: rename print method in either Printable or Document to remove amiguity
