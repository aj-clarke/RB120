module Swim
  def enable_swimming
    @can_swim = true
  end
end

class Dog
  include Swim

  def swim
    "swimming!" if @can_swim
  end
end

teddy = Dog.new
p teddy.swim          # nil
# Since we didn't call the Swim#enable_swimming method, the @can_swim instance
# variable was never initialized. The `#swim` method then returned `nil` due to
# nothing being returned from the method.

# To correct the issue, need the following:

teddy.enable_swimming  # calls the #enable_swiming method to initialize @can_swim
teddy.swim             # => swimming!