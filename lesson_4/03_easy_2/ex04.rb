=begin
What could you add to this class to simplify it and remove two methods from the
class definition while still maintaining the same functionality?

Answering the question In-line
=end

class BeesWax
  # `attr_accessor` :type     # Add to replace `#type` and `#type=(t)` methods

  def initialize(type)
    @type = type
  end

  # would remove this method
  def type
    @type
  end

  # would remove this method
  def type=(t)
    @type = t
  end

  # remove the @ symbol from `@type`
  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end
