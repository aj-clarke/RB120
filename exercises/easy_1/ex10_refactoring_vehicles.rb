# Consider the following classes:
# Refactor them so they all use a common superclass, and inherit behavior as needed.

class Vehicle
  attr_reader :make, :model, :wheels

  def initialize(make, model, wheels = false)
    @make = make
    @model = model
    @wheels = wheels if wheels
  end

  def to_s
    if wheels
      "My #{make} #{model} has #{wheels} wheels"
    else
      "#{make} #{model}"
    end
  end
end

class Car < Vehicle
  # attr_reader :make, :model, :wheels

  def initialize(make, model, wheels = 4)
    super
  end
end

class Motorcycle < Vehicle
  # attr_reader :make, :model, :wheels

  def initialize(make, model, wheels = 2)
    super
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload, wheels = 6)
    super(make, model, wheels)
    @payload = payload
  end

  def to_s
    "My #{make} #{model} has #{wheels} wheels with a #{payload} payload."
  end
end

audi = Car.new('audi', 'a7')
puts audi # => My audi a7 has 4 wheels

yamaha = Motorcycle.new('yamaha', 'yzf-r1m')
puts yamaha # => My yamaha yzf-r1m has 2 wheels

ford = Truck.new('ford', 'f-150 raptor', '1,310 lbs')
puts ford # => My ford f-150 raptor has 6 wheels with a 1,310 lbs payload.
