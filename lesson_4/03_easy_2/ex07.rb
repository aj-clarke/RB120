# If we have a class such as the one below:

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

=begin

Explain what the @@cats_count variable does and how it works. What code would
you need to write to test your theory?

ANSWER:
The @@cats_count variable contains an integer whos value depicts how many
objects have been instantiated for the Cat class. It is initialized to `0` and
each time a new Cat object is instantiated, the @@cats_count value is
incremented by a count of 1.

Below is how to validate this theory:
=end

p Cat.cats_count # Should return 0
meowsticle = Cat.new('black')

p Cat.cats_count # Should return 1
lil_kitty = Cat.new('black')

p Cat.cats_count # Should return 2

# Validated it works.
