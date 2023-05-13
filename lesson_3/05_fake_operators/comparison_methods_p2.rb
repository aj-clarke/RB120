class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  # Adding a `>` method
  def >(other_person)
    age > other_person.age
  end
end

bob = Person.new('Bob', 49)
kim = Person.new('Kim', 33)

# What happens if we try to compare now?

puts "bob is older" if bob > kim            # => "bob is older"
puts "bob is older" if bob.>(kim)           # => "bob is older"
