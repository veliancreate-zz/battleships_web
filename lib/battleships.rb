require 'sinatra/base'
require_relative 'player'
require_relative 'game'
require_relative 'cell'
require_relative 'board'
require_relative 'ship'
require_relative 'water'

class BattleShips < Sinatra::Base
  
  GAME = Game.new
  BOARD = Board.new(Cell)
  COMPUTER_BOARD = Board.new(Cell)

  battleship = Ship.battleship
  COMPUTER_BOARD.place(battleship, :B1, :horizontally)
  BOARD.place(battleship, :B1, :horizontally)
  COMPUTER_BOARD.push_water(Water)
  BOARD.push_water(Water) 

  enable :sessions

  get '/' do
    erb :index
  end

  get '/new_game' do
    
    erb :game
  end  

  post '/new_game' do
    if params[:name]
      @player = Player.new
      @computer = Player.new
      @computer.board= COMPUTER_BOARD
      @player.name=params[:name]
      @player.board = BOARD
      GAME.player1 = @player
      GAME.player2 = @computer
    end 
    @board = BOARD
 
    erb :game
  end 

  get '/game' do 

    erb :game
  end  

  post '/game' do
    @game=GAME
    @player = GAME.player1
    @computer = GAME.player2
    @shot = params[:shoot_on].capitalize.to_sym
    @game.shoots(@shot)

    erb :game

  end  

  set :views, Proc.new{File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0
end
