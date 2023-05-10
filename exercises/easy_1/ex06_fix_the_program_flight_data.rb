# Consider the following class definition:

class Flight
  # attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

# There is nothing technically incorrect about this class, but the definition
# may lead to problems in the future. How can this class be fixed to be
# resistant to future problems?

# Originally changed line 4 to attr_reader

# Hint:
# Consider what might happen if you leave this class defined as it is, and later
# decide to alter the implementation so that a database is not used.

# Hint did not help get to the LS solution of removing any access to setter or
# getter methods from outside of the class.