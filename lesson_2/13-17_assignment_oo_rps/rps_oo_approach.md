1. Write a textual description of the problem or exercise.
2. Extract the major nouns and verbs from the description.
3. Organize and associate the verbs with the nouns.
4. The nouns are the classes and the verbs are the behaviors or methods.

1)
Rock, Paper, Scissors is a two-player game where each player chooses
one of three possible moves: rock, paper, or scissors. The chosen moves
will then be compared to see who wins, according to the following rules:

- rock beats scissors
- scissors beats paper
- paper beats rock

If the players chose the same move, then it's a tie.

2) Extract the major nouns and verbs from the description.
Nouns: player, rules, moves (rock, paper, sissors were ignored, using 'moves' instead)
Verbs: choose, compare

3) Organize and associate the verbs with the nouns.
3a or 4) The nouns are the classes and the verbs are the behaviors or methods.
Player
- choose
Move
Rule

- compare


---------------------------------------------------

class Player
  def initialize
    # maybe a 'name'? what about a 'move'?
  end

  def choose

  end
end

class Move
  def initialize
    # seems like we need something to keep track of the
    # choice... a move object can be 'paper', 'rock', or 'scissors'
  end
end

class Rule
  def initialize
    # not sure what the 'state' of a rule object should be
  end
end

# not sure where 'compare' goes yet
def compare(move1, move2)

end