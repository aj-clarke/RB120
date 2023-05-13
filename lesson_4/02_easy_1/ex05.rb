# Which of these two classes would create objects that would have an instance
# variable and how do you know?

class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

=begin

The `Pizza` class would create an object with a coorepsonding instance vairable.
Within the `initialize` constructor method, a new instance variable `@name` is
created and assigned the value referenced by the method variable `name`.

The `initialize` constructor method within the `Fruit` class does not initialize
an instance variable, it merely reassigns the method variable `name` to itself.

We can validate by instantiating a new object from each class, then inspecing
each of them.
=end

banana = Fruit.new('banana')
pepperoni = Pizza.new('pepperoni')
p banana
p pepperoni

=begin
LS also noted that you can call the `#instance_variables` method on each object
to validate like below.
=end

p banana.instance_variables
p pepperoni.instance_variables

