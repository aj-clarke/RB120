=begin
Modules are how Ruby handles 'multiple inheritence' due to the fact that a Ruby
class can only direcly inherit from one superclass. Classes can 'include' or
'mixin' as many modules as desired.
=end

module Swimmable
  def swim
    'swimming!'
  end
end

class Dog
  include Swimmable
  # ... rest of code omitted
end

class Fish
  include Swimmable
  # ... rest of code omitted
end

