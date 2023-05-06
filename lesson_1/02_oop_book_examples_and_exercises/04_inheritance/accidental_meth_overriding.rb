# class Parent
#   def say_hi
#     p 'Hi from Parent.'
#   end
# end

# p Parent.superclass


# class Child < Parent
#   def say_hi
#     p 'Hi from Child.'
#   end
# end

# child = Child.new
# child.say_hi        # => "Hi from Child."

# son = Child.new
# son.send :say_hi    # => "Hi from Child."

# Test defining `send` method in Child class; overriding `send` in Object

class Parent
  def say_hi
    p 'Hi from Parent.'
  end
end

p Parent.superclass


class Child < Parent
  def say_hi
    p 'Hi from Child.'
  end

  def send
    p 'send from Child...'
  end
end

child = Child.new
child.say_hi        # => "Hi from Child."

son = Child.new
son.send :say_hi    # => "Hi from Child."
