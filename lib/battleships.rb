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
      GAME.add_player(@player)
      GAME.add_player(@computer)
    end 
    @board = BOARD
    def push_water  
      ('A'..'J').each do |row|  
        (1..10).each do |col|
          joined = row+col.to_s
          joined_sym = joined.to_sym
          if !@computer.board.grid[joined_sym].content.is_a?(Ship) then @computer.board.grid[joined_sym].content = Water.new end
        end
      end 
    end  
    push_water

    erb :game
  end 

  get '/game' do
    erb :game
  end  

  post '/game' do
    @game=GAME
    @player = GAME.player1
    @computer = GAME.player2
    @shot = params[:shoot_on].to_sym

    @game.shoots(@shot)

    erb :game
  end  

  set :views, Proc.new{File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0
end
