class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

p sparky = GoodDog.new('Sparky', 4)
# p sparky.human_years # NoMethodError: private method `human_years' called


class GoodDog2
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  # Added to access 'private' `human_years` method
  def public_disclosure
    p "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end

end

p sparky = GoodDog2.new('Sparky', 4)
sparky.public_disclosure
