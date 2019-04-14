require_relative 'lib/engine'

# create an engine with two new players and a game board
engine = Engine.new(Player.new("Player 1", "X"),
                    Player.new("Player 2", "O"),
                    Board.new)
engine.start_game

