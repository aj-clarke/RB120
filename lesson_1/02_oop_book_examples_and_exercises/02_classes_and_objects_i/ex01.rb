=begin
Create a class called MyCar. When you initialize a new instance or object of the
class, allow the user to define some instance variables that tell us the year,
color, and model of the car. Create an instance variable that is set to 0 during
instantiation of the object to track the current speed of the car as well.
Create instance methods that allow the car to speed up, brake, and shut the car
off.
=end

class MyCar
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
audi.increase_speed(25)
audi.current_speed
audi.decrease_speed(10)
audi.current_speed
audi.decrease_speed(15)
audi.current_speed
audi.turn_car_off
