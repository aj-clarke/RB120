# Using the code from the previous exercise, add a getter method named #name and
# invoke it in place of @name in #greet.

class Cat
  attr_reader :name # Allows you to invoke `#name` inside and outside the class

  def initialize(name)
    @name = name
  end

  # Can only inovke `name` inside of the class
  # def name
  #   @name
  # end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
p kitty.name # Invoked outside of class by way of `attr_reader`