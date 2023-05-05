class GoodDog2
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end

end

sparky = GoodDog2.new('Sparky', 3)
puts sparky # => Mimics `puts sparky.to_s`
p sparky