
class MyCar
  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def self.gas_mileage(gallons, miles)
    puts "My car gets #{miles / gallons} miles per gallon!"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @car_status = 'on'
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

  def turn_car_off
    @car_status = 'off'
    @current_speed = 0
    puts "The car is now #{@car_status}"
  end

  def to_s
    "My car is a #{year} #{color} #{model}."
  end
end

audi = MyCar.new('2023', 'orange', 'Audi A7')
# puts audi.color
# audi.spray_paint("Yellow")
# puts audi.color
# MyCar.gas_mileage(18, 569)
puts audi