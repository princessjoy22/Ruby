class AreaCalculator
  def initialize(length, width)
    @length = length
    @width = width
  end
end

class rectangle < AreaCalculator
  def compute
    @length * @width
end
end



rectangle = Rectangle.new(10,10)
puts rectangle.compute