# How could you change the method name below so that the method name is more
# clear and less repetitive?

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  # change the method name to `status`
  def light_status 
    "I have a brightness level of #{brightness} and a color of #{color}"
  end
end

# instead of having to call `light1.light_status` instead you would simply call
# `light1.status`