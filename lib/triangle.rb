require 'pry'

class Triangle
  attr_accessor :type, :a, :b, :c

  def initialize(a, b, c)
    if a <= 0 || b <= 0 || c <= 0
      begin
        raise TriangleError
      rescue TriangleError=> error
        error.no_size_message
      end
    elsif a

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
    "No side of your triangle may have any side length less than or equal to 0"
  end
  
  def violating_triangle_inequality
    "Invalid triangle. The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
  end

end
