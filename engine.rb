require './player.rb'
require './board.rb'

class Engine
  def initialize(player_x, player_o, board)
      @player_x = player_x
      @player_o = player_o
      @board = board
  end

  def make_move(mark, cell)
    @board.update_board(mark, cell)
    @board.show_board
    check_winner
  end

  def check_winner
    Board::WINNING_CELLS.each do |cell_array|
      x_count, o_count = 0, 0
      cells = @board.cells
      cell_array.each do |cell|
        if cells[cell] == "X"
          x_count += 1
        elsif cells[cell] == "O"
          o_count += 1
        end
      end
      if x_count == 3 || o_count == 3
        puts "THERE IS A WINNER"
        puts x_count == 3 ? "X WINS" : "O WINS"
        break
      end
    end
  end

  def get_player_choice(player)
    puts " Player (#{player.mark}) choose cell (1-9): "
    cell = gets.chomp.to_i
    return cell
  end

end

player_1 = Player.new("Cem", "X")
player_2 = Player.new("PC", "O")
board = Board.new

engine = Engine.new(player_1, player_2, board)
engine.make_move("O",2)
engine.make_move("O",1)
cell = engine.get_player_choice(player_1)
engine.make_move(player_1.mark, cell)
cell = engine.get_player_choice(player_2)
engine.make_move(player_2.mark, cell)


