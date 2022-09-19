# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require './classes/Game'
require './classes/Player'
require './classes/Question'

game = Game.new
game.play