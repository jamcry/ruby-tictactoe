#spec/player_spec.rb
require 'player'

describe Player do
    it "#initialize creates new players with name and mark" do
        player = Player.new("New Player", "X")
        expect([player.name, player.mark]).to eq(["New Player", "X"])
    end
end

