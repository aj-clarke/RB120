=begin
- Create a module that you can mix in to ONE of your subclasses that describes a
  behavior unique to that subclass.
=end
module Towable
  def hitch_types
    hitch_arr = ['bumper', 'gooseneck', 'rear receiver', 'front mount', '5th wheel']
    "Types of tow hitches: #{hitch_arr}"
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year
  attr_reader :model

  @@num_of_vehicles = 0

  def self.gas_mileage(gallons, miles)
    puts "My car gets #{miles / gallons} miles per gallon!"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @car_status = 'on'
    @@num_of_vehicles += 1
  end

  def self.print_num_of_vehicles
    puts "There have been #{@@num_of_vehicles} vehicles created."
  end

  def spray_paint(new_color)
    self.color = new_color
    puts "Your new #{self.color} paint job looks awesome!"
  end

  def increase_speed(mph)
    @current_speed += mph
    puts "Smashing the gas to go #{mph} mph faster!"
  end

  def decrease_speed(mph)
    @current_speed -= mph
    puts "Easy there, slowing down #{mph} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph"
  end

  def turn_car_on
    @car_status = 'on'
    @current_speed = 0
    puts "The car is now #{@car_status}"
  end

  def turn_car_off
    @car_status = 'off'
    @current_speed = 0
    puts "The car is now #{@car_status}"
  end
end

class MyCar < Vehicle
  ENGINE_TYPE = 'V6'

  def to_s
    "My car is a #{year} #{color} #{model}."
  end
end

class MyTruck < Vehicle
  include Towable
  ENGINE_TYPE = 'V8'

  def to_s
    "My truck is a #{year} #{color} #{model}."
  end
end

audi = MyCar.new('2023', 'orange', 'Audi A7')
ford = MyTruck.new('2018', 'black', 'Ford Lightning')

# p audi
# p ford

# puts audi
# puts ford

puts ford.hitch_types
