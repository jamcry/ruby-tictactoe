#lib/board.rb
class Board
    attr_reader :cells
    WINNING_CELLS = [ [1, 2, 3], [4, 5, 6], [7, 8, 9],
                      [1, 4, 7], [2, 6, 8], [3, 7, 9],
                      [1, 5, 9], [3, 5, 7] ]
    def initialize
      #puts " ## BOARD INITIALIZED."
      @cells = {}
      (1..9).each {|n| cells[n] = " "}
    end
  
    def show_board
      puts "=" * 17
      (1..9).each do |i|
        print "[ #{cells[i]} ] "
        print "\n" if i % 3 == 0
      end
      puts "=" * 17
    end
  
    def update_board(mark, cell_index)
        if cells[cell_index] == " "
          cells[cell_index] = mark
          return true
        else
          puts " [X] THAT CELL IS NOT EMPTY! "
          return false
        end
    end

  end