=begin
If we have a class such as the one below:
You can see in the make_one_year_older method we have used self. What does self
refer to here?
=end

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

=begin
Self would refer to the OBJECT the method is being called on: ie:
=end

meowsticle = Cat.new('albino')
meowsticle # <- `self` in the `make_one_year_older method equals `meowsticle`; the calling object
p meowsticle.age # => 0

meowsticle.make_one_year_older # `self.age` is really `meowsticle.age` within method
p meowsticle.age # => 1