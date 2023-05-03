# When running the following code...

=begin

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

# We get the following error

test.rb:9:in `<main>': undefined method `name=' for
  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)

# Why do we get this error and how do we fix it?


We get this error because we only have our attr* set to 'reader' which only creates
a `name` getter method, not a setter method.
If we want to also have access to make changes, we need to change `attr_reader`
to `attr_accessor` which will create a getter and setter method.
=end