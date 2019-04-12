#spec/main_spec.rb
require 'player'
require 'board'
require 'engine'

describe Player do
    it "#initialize creates new players with name and mark" do
        player = Player.new("New Player", "X")
        expect([player.name, player.mark]).to eq(["New Player", "X"])
    end
end

describe Board do
    it "#initialize creates 9 empty cells with indices" do
        board = Board.new
        expect(board.cells).to eq({1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "})
    end
end

describe Engine do
    it "#check_winner returns 'X WINS' if X wins" do
        engine = Engine.new(Player.new("P1", "X"), 
                            Player.new("P2", "O"), 
                            Board.new)
        (1..3).each {|cell| engine.make_move("X", cell)}
        expect(engine.check_winner).to eq("X WINS")
    end

    it "#check_winner returns 'O WINS' if O wins" do
        engine = Engine.new(Player.new("P1", "X"), 
                            Player.new("P2", "O"), 
                            Board.new)
        (1..3).each {|cell| engine.make_move("O", cell)}
        expect(engine.check_winner).to eq("O WINS")
    end

end