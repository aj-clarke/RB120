=begin
If we have a class such as the one below:
In the name of the cats_count method we have used self. What does self refer to
in this context?
=end

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

=begin
`self` refers to the `Cat` class as it is a class method
You can call `Cat.cats_count`
=end
