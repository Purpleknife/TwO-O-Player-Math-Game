# Initializes Player class
# To keep track of the Player's name, id and lives.
# To also keep track of the current player.

class Player

  attr_accessor :name, :id, :life, :current_player

  def initialize(name, id)
    @name = name
    @id = id
    @life = 3
    @current_player = false
  end

end

