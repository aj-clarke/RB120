# Examples of what goes on behind the scenes for `#[]` getter and `#[]=` setter
# methods

my_array = %w(first second third fourth) # ["first", "second", "third", "fourth"]

# element reference
my_array[2]                                 # => "third"
my_array.[](2)                              # => "third"

# element assignment
my_array[4] = 'fifth'
puts my_array.inspect       # => ["first", "second", "third", "fourth", "fifth"]

my_array.[]=(5, 'sixth')
puts my_array.inspect       # => ["first", "second", "third", "fourth", "fifth", "sixth"]

# ------------------------------------------------------------------------------

# Building custom getter and setter methods that follow the Ruby standard
# library 'format' for how they Should function.

class Team
  # ... rest of code omitted for brevity

  def [](idx)
    members[idx]
  end

  def []=(idx, obj)
    members[idx] = obj
  end
end

# Now we can test the custom getter/setter methods

# assume set up from earlier
cowboys.members                    # => ... array of 3 Person objects

cowboys[1]                         # => #<Person:0x007fae9295d830 @name="Emmitt Smith", @age=46>
cowboys[3] = Person.new("JJ", 72)
cowboys[3]                         # => #<Person:0x007fae9220fa88 @name="JJ", @age=72>
