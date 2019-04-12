#lib/player.rb
class Player
  attr_accessor :name, :mark
  def initialize(name, mark)
      #puts " ## PLAYER #{name} INITIALIZED."
      @name = name
      @mark = mark
  end
end