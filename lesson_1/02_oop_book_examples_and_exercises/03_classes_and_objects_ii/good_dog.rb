class GoodDog
  @@number_of_dogs = 0    # => Class vairable is initialized to 0

  def initialize
    @@number_of_dogs += 1 # => Incremenets class variable during each new instantiation via the `initialize` constructor
  end

  def self.total_number_of_dogs # => Used to return the value of the class variable from the class method
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs