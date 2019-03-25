class Board
    attr_reader :cells
    WINNING_CELLS = [[1,2,3],[4,5,6],[7,8,9]]
    def initialize
      puts " ## BOARD INITIALIZED."
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
        else
          puts "That cell is not empty!"
        end
    end

  end