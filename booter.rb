require './lib/board'
require './lib/game'
require './lib/ship'
require './lib/water'
require './lib/cell'

board = Board.new(Cell)
submarine = Ship.submarine
battleship = Ship.battleship

board.shoot_at(:A1)
board.place(battleship, :B2, :horizontally)

p board