require 'pry'

class Triangle
  attr_accessor :kind, :equilateral, :isosceles, :scalene, :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    # if self.l1 == self.l2 && self.l2 == self.l3
    #   self.kind = @equilateral
    # end
    # self.kind
  end

  class TriangleError < StandardError
 # triangle error code
  end
end
