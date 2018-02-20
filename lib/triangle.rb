require 'pry'

class Triangle
  attr_accessor :type, :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if self.a == self.b && self.b == self.c
      self.type = :equilateral
    elsif self.a == self.b || self.a == self.c || self.b == self.c
      self.type = :isosceles
    else
      self.type = :scalene
    end
    self.type
  end


end

class TriangleError < StandardError
  def no_size_message 
    "Your triangle cannot have 0 as a side length."
  end

  def
end
