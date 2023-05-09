class Person
  attr_accessor :name, :pet

  def initialize(name)
    @name = name
  end
end

class Bulldog
  def speak
    'bark!'
  end

  def fetch
    'fetching!'
  end
end

bob = Person.new('Robert')
bud = Bulldog.new

bob.pet = bud

p bob.pet
p bob.pet.class
p bob.pet.speak
p bob.pet.fetch