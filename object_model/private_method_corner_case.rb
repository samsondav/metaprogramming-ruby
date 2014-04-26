class C
  def public_method
    self.private_method # fails due to explicit receiver
    private_method # passes because we implicitly call on self
  end

  private

  def private_method
    return "private"
  end
end
