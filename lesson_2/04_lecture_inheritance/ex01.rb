# One problem is that we need to keep track of different breeds of dogs, since
# they have slightly different behaviors. For example, bulldogs can't swim, but
# all other dogs can.

# Create a sub-class from Dog called Bulldog overriding the swim method to
# return "can't swim!"

class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

teddy = Dog.new
puts teddy.speak
puts teddy.swim

bull = Bulldog.new
puts bull.speak
puts bull.swim
