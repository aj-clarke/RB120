# If we have a class such as the one below:

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
In the make_one_year_older method we have used self. What is another way we
could write this method so we don't have to use the self prefix?

ANSWER:
We could use the @ symbol to reference the instance variable directly.
=end
