#lib/engine.rb
require_relative 'player'
require_relative 'board'

class Engine
  def initialize(player_x, player_o, board)
      @player_x = player_x
      @player_o = player_o
      @board = board
  end

  def make_move(mark, cell, show=true)
    board_update = @board.update_board(mark, cell)
    @board.show_board if show
    return board_update
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
        puts " [!] THERE IS A WINNER"
        return x_count == 3 ? "X WINS" : "O WINS"
        break
      end
    end
  end

  def get_player_choice(player)
    # get user input until a valid cell number is entered
    while true
      print " [>] Player (#{player.mark}) choose cell (1-9): "
      cell = gets.chomp.to_i

      if !(cell >= 1 && cell <= 9)
        puts " [X] INVALID CELL. ENTER A NUMBER BETWEEN (1-9)!"
      else
        break
      end

    end
    return cell
  end

  def start_game
    round = 1
    while true
      if round == 10; puts "TIE"; break; end;
      # swap current_player each round
      current_player = round % 2 == 0 ? @player_x : @player_o

      valid_move = false
      while !valid_move
        cell = self.get_player_choice(current_player)
        valid_move = self.make_move(current_player.mark, cell)
      end

      end_game = self.check_winner
      if end_game.include? "WINS"
        puts end_game
        break
      end
      round += 1
    end
    
  end
end


