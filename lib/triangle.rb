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
      self.typ = :scalene
    self.type
  end

  class TriangleError < StandardError
 # triangle error code
  end
end
