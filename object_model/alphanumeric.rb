class String
  def to_alphanumeric(s)
    s.gsub %r{[^\w\s]}, ''
  end
end
