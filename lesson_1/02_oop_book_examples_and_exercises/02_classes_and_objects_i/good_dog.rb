class GoodDog
  #attr_accessor :name # Replaces getter and setter methods (name and name=(n))
                      # Above is the same as attr_accessor(:name) - Syntactical sugar

  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  # def name          # This was renamed from 'get_name'
  #   @name
  # end

  # def name=(n)      # This was renamed from 'set_name'
  #   @name = n
  # end

  def speak
    puts "#{name} says Arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

# sparky = GoodDog.new('Sparky')
sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
sparky.speak

# fido = GoodDog.new('Fido')
# fido.speak

puts sparky.info
# sparky.name = ('Spartacus')
sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info

