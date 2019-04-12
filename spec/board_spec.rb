#spec/board_spec.rb
require 'board'

describe Board do
    it "#initialize creates 9 empty cells with indices" do
        board = Board.new
        expect(board.cells).to eq({1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "})
    end

    it "#update_board updates given cell with mark" do
        board = Board.new
        board.update_board("X", 3)
        expect(board.cells[3]).to eq("X")
    end

    it "#update_board returns false if cell is invalid" do
        board = Board.new
        expect(board.update_board("X", 15)).to eq(false)
    end
end