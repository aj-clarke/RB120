module Mammal
  #... code

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

p value = Mammal.some_out_of_place_method(4)
# or
p value = Mammal::some_out_of_place_method(4)
# although the first way is the preferred way.