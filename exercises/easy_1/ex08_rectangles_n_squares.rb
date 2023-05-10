# Given the following class:

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  # Defined an `initialize` constructor method to pass the single argument to
  # the Rectangel superclass to initialize both the `@height` and `@width`
  # instance variables
  def initialize(side_length)
    super(side_length, side_length)
  end

  # Originally just overwrote the superclass method to explicitly:
  # def initialize(sides)
  #   @height = sides
  #   @width = sides
  # end
end

# Write a class called Square that inherits from Rectangle, and is used like this:

square = Square.new(5)
puts "area of square = #{square.area}"