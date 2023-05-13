class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

bob = Person.new('Bob', 49)
kim = Person.new('Kim', 33)

# What happens if we try to compare here?

puts 'bob is older than kim' if bob > kim   # => NoMethodError

# Ruby cannot find a `>` method for `bob` within the Person class

# Refer to comparison_methods_p2.rb for the fix