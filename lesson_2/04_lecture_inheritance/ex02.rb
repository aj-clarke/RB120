# First, create `run`, `jump`, and `fetch` instance methods for the Dog class.
# Create a new class called Cat, which can do everything a dog can, except swim
# or fetch. Assume the methods do the exact same thing. Hint: don't just copy
# and paste all methods in Dog into Cat; try to come up with some class
# hierarchy.
class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Pet
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

class Cat < Pet
  def speak
    'meow!'
  end
end

teddy = Dog.new
puts teddy.speak
puts teddy.swim

bull = Bulldog.new
puts bull.speak
puts bull.swim

meowsers = Cat.new
puts meowsers.speak
puts meowsers.run
puts meowsers.jump
puts meowsers.fetch # => Expect NoMethodError
