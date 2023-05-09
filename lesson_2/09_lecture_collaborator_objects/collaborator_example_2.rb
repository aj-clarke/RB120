class Person
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end
end

class Pet
  def jump
    'jumping'
  end
end

class Bulldog < Pet
  def speak
    'bark!'
  end

  def fetch
    'fetching!'
  end

end

class Cat < Pet
  def speak
    'meow!'
  end
end

bob = Person.new('Robert')
bud = Bulldog.new
kitty = Cat.new

bob.pets << kitty
bob.pets << bud
p bob.pets

# bob.pets.jump    # Cannot just call `Pet` methods on `pets` because it is an array

bob.pets.each do |pet|
  puts pet.jump
end
