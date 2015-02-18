require 'sinatra/base'
require_relative 'player'
require_relative 'game'
require_relative 'cell'
require_relative 'board'

class BattleShips < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :game
  end  

  post '/new_game' do
    if params[:name]
      player = session[:player]=Player.new
      @player = player
      @player.name=params[:name]
      @board=Board.new(Cell)
      p @board.grid[:A1]
    end  
    erb :game
  end

  post '/game' do 
    
  end  

  set :views, Proc.new{File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0
end
