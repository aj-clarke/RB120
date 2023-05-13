# DO NOT define both a custom `#==` and a custom `#!=` method. Example below:

class Foo
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def ==(other)
    value == other.value
  end

  def !=(other)
    value == other.value
  end
end

foo1 = Foo.new(1)
foo2 = Foo.new(2)
p foo1 == foo2      # false
p foo1 != foo2      # also false!
p foo2 == foo2      # true
p foo2 != foo2      # also true!