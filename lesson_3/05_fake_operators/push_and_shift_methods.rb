# The `#<<` method is a good choice when workingwith a class that represents a
# collection.

class Team
  attr_accessor :name, :memebers

  def initialize(name)
    @name = name
    @members = []
  end

  def <<(person)
    members.push person
  end
end

cowboys = Team.new('Dallas Cowboys')
emmitt = Person.new('Emmit Smith', 46) # suppose we're using the Person class from earlier

cowboys << emmit                       # will this work? YES!

cowboys.members                        # => [#<Person:0x007fe08c209530>]

=begin
Could have even added a guard clause to the new #<< method if there are strict
requirements on what members can be added. Example below:

def <<(person)
  return if person.not_yet_18?              # suppose we had Person#not_yet_18?
  members.push person
end

=end