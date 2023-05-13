=begin
Class variables are accessible to sub-classes
@@total_animals class var is initialized within the Animal class and does not
require an explicit method invocation to initialize it. It is readily available
once Ruby evaluates the class.
=end

class Animal
  @@total_animals = 0

  def initialize
    @@total_animals += 1
  end
end

class Dog < Animal
  def total_animals
    @@total_animals
  end
end

spike = Dog.new
p spike.total_animals # => 1
