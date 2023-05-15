module Fuelable   # LS named it 'Moveable`
  attr_accessor :speed, :heading
  attr_writer :fuel_efficiency, :fuel_capacity

  def range
    @fuel_capacity * @fuel_efficiency

    # Part of my original solution
    # return @fuel_capacity * @fuel_efficiency if type == WheeledVehicle
    # @fuel_capacity * @fuel_efficiency + 10 if type == WaterVehicle
  end
end

class WheeledVehicle
  include Fuelable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end

  # Part of my original solution
  # def type
  #   self.class.superclass
  # end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures
    super([20,20], 80, 8.0)
  end
end

class WaterVehicle
  include Fuelable

  attr_reader :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    @propeller_count = num_propellers
    @num_hulls = num_hulls
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def range
    super + 10
  end
  # Part of my original solution
  # def type
  #   self.class.superclass
  # end
end

class Catamaran < WaterVehicle; end

class Motorboat < WaterVehicle
  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    super(1, 1, km_traveled_per_liter, liters_of_fuel_capacity)
  end
end

car1 = Auto.new
p car1
p car1.range

cat1 = Catamaran.new(2, 1, 10, 300)
p cat1
p cat1.range

boat1 = Motorboat.new(10, 300)
p boat1
p boat1.range
