#spec/engine_spec.rb
require 'player'
require 'board'
require 'engine'

describe Engine do
    it "#check_winner returns 'X WINS' if X wins" do
        engine = Engine.new(Player.new("P1", "X"), 
                            Player.new("P2", "O"), 
                            Board.new)
        (1..3).each {|cell| engine.make_move("X", cell, false)}
        expect(engine.check_winner).to eq("X WINS")
    end

    it "#check_winner returns 'O WINS' if O wins" do
        engine = Engine.new(Player.new("P1", "X"), 
                            Player.new("P2", "O"), 
                            Board.new)
        (1..3).each {|cell| engine.make_move("O", cell, false)}
        expect(engine.check_winner).to eq("O WINS")
    end

end