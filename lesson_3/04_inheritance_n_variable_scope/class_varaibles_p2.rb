=begin
When using a class variable, note that there is only one copy shared across all
sub-classes.
=end

class Vehicle
  @@wheels = 4

  def self.wheels
    @@wheels
  end
end

Vehicle.wheels   # => 4

# Expected output after exposing the class method that returns the value of
# @@wheels

# What happens if the below is added?

class Motorcycle < Vehicle
  @@wheels = 2
end

Motorcycle.wheels # => 2
Vehicle.wheels    # => 2    |    Not good!

# Does this also affect additional sub-classes?  YES! Example:

class Car < Vehicle ; end

p Car.wheels      # => 2
