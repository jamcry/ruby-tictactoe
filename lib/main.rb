require 'engine'
require 'board'
require 'player'

player_1 = Player.new("Cem", "X")
player_2 = Player.new("PC", "O")
board = Board.new
engine = Engine.new(player_1, player_2, board)
engine.start_game

