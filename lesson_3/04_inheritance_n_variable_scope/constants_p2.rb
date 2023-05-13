=begin
Order of constants searching
* 1. Lexical scope (doesn't include Main Scope)
* 2. Inheritance hierarchy of the 'structure that references the constant'
3. Main Scope (ie, Top level)
=end

# Example of #1 and #2, with #2 Inheritance resolving the `WHEELS` constant.

class Vehicle
  WHEELS = 4
end

WHEELS = 6

class Car < Vehicle
  def wheels
    WHEELS
  end
end

car = Car.new
puts car.wheels # => 