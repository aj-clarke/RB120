# The following code is flawed. It currently allows @name to be modified from
# outside the method via a destructive method call. Fix the code so that it
# returns a copy of @name instead of a reference to it.

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name.dup
  end

end

puts person1 = Person.new('James')
puts person1.name.reverse!
puts person1.name