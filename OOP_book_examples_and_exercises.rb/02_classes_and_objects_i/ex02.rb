# Add an accessor method to your MyCar class to change and view the color of your
# car. Then add an accessor method that allows you to view, but not modify, the
# year of your car.

class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @car_status = 'on'
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
end

audi = MyCar.new('2023', 'orange', 'Audi A7')
puts audi.color
puts audi.color = 'Black'
puts audi.color
puts audi.year
