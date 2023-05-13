# If we have this class:

class Game
  def play
    'Start the game!'
  end
end

class Bingo < Game
  def rules_of_play
    # rules of play
  end
end

=begin
What would happen if we added a play method to the Bingo class, keeping in mind
that there is already a method of this name in the Game class that the Bingo
class inherits from.

ANSWER:
If a `play` method is added within the `Bingo` class, then when `play` is called
from a `Bingo` object, it would reference the new `play` method within the
`Bingo class`. When a method call takes place, Ruby first checks for the method
in the current class, if it is not found, Ruby will search up the `method chain`
and either find it or throw a `NoMethodName` error.

=end