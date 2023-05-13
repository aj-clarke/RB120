# If we have two classes
 
class Game
  def play
    'Start the game!'
  end
end

class Bingo < Game  # Added `< Game` to enable inheritance
  def rules_of_play
    # rules of play
  end
end

# What can we add to the Bingo class to allow it to inherit the play method from
# the Game class?

# Answer: Set the Bingo class to inherit from the Game class

p Bingo.new.play  # => Start the game!
