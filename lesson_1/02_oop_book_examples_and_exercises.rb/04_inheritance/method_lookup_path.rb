module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmiable
  def swim
    "I'm swimming!"
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---Animal method lookup---"
puts Animal.ancestors

# => ---Animal method lookup---
# => Animal
# => Walkable
# => Object
# => Kernel
# => BasicObject

puts "---GoodDog method lookup---"
puts GoodDog.ancestors

