# If we have these two methods in the Computer class:

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

# and...

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    self.template
  end
end


# What is the difference in the way the code works?

=begin
They both technically function in the same way. `self.template` will refernce
the same instance variable value as `template`. This shows a situation where
using `self` is redundant and its use should be avoided.
=end