class Laptop
  def initialize(memory)
    @memory = memory
  end
  
  def memory
    @memory
  end

  def memory=(memory)
    @memory = memory
  end
end

laptop = Laptop.new('8 GB')
p laptop.memory             # => '8 GB'
laptop.memory = '16 GB'
p laptop.memory             # => '16 GB'