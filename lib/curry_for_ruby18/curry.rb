class Proc
  def curry(*p, &block)
    lambda {|*args| self.call(*(p+args), &block)}
  end
end
