module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable
end

sparky = Dog.new
neemo = Fish.new
paws = Cat.new # undefined method `swim' for #<Cat:0x0000022868e33568> (NoMethodError)

p sparky.swim
p neemo.swim
p paws.swim
