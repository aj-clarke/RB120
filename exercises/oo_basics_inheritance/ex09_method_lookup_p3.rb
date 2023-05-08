# Using the following code, determine the lookup path used when invoking
# bird1.color. Only list the classes or modules that were checked by Ruby when
# searching for the #color method.

module Flyable
  def fly
    "I'm flying!"
  end
end

class Animal
  attr_reader :color 

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
  include Flyable
end

bird1 = Bird.new('Red')
p bird1.color           # => 'Red'

# Classes checked when earching for #color method for the `bird1.color` method
# invocation.
# Bird > Flyable > Animal