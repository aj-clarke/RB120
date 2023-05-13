class Team
  attr_accessor :name, :memebers

  def initialize(name)
    @name = name
    @members = []
  end

  def <<(person)
    members.push person
  end

  def +(other_team)
    members + other_team.members
  end
end

# we'll use the same Person class from earlier

cowboys = Team.new("Dallas Cowboys")
cowboys << Person.new("Troy Aikman", 48)
cowboys << Person.new("Emmitt Smith", 46)
cowboys << Person.new("Michael Irvin", 49)


niners = Team.new("San Francisco 49ers")
niners << Person.new("Joe Montana", 59)
niners << Person.new("Jerry Rice", 52)
niners << Person.new("Deion Sanders", 47)

dream_team = cowboys + niners   # => New array object containng all 6 members (their Person objects)

# Does not quite represent how a `#+` typically works. Should be expecting a
# new `Team` object

=begin
Our Team#+ method should return a new Team object. The Team#initialize method,
however, requires a name, which makes it a little awkward. We could do more
refactoring to improve it, but that will deviate too much from the main point.
We'll just initialize the team name to "Temporary Team" for now.
Would look like below:


class Team
  # ... rest of class omitted for brevity

  def +(other_team)
    temp_team = Team.new("Temporary Team")
    temp_team.members = members + other_team.members
    temp_team
  end
end


The new outcome would be as follows:

dream_team = niners + cowboys
puts dream_team.inspect       # => #<Team:0x007fac3b9eb878 @name="Temporary Team" ...
=end
