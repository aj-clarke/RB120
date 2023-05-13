=begin
Order of constants searching
1. Lexical scope (doesn't include Main Scope, example in constants_p2 snippet)
* 2. Inheritance hierarchy of the 'structure that references the constant'
3. Main Scope (ie, Top level)

Example of #2 Inheritance
=end

module FourWheeler
  WHEELS = 4
end

class Vehicle
  def maintenance
    "Changing #{WHEELS} tires."
  end
end

class Car < Vehicle
  include FourWheeler

  def wheels
    WHEELS
  end
end

car = Car.new
puts car.wheels # => 4
puts car.maintenance # => NameError: uninitialized constant Vehicle::WHEELS
