class Animal
  def initialize
  end
end

class Bear < Animal
  def initialize(color)
    super()               # () required or 'wrong num of arguments' error thrown
    @color = color
  end
end

p bear = Bear.new('black')
