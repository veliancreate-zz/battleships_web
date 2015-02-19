require 'sinatra/base'
require_relative 'player'
require_relative 'game'
require_relative 'cell'
require_relative 'board'
require_relative 'ship'
require_relative 'water'

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
    end 

    ('A'..'J').each do |row|  
      (1..10).each do |col|
        joined = row+col.to_s
        joined_sym = joined.to_sym
        if !@board.grid[joined_sym].content.is_a?(Ship) then @board.grid[joined_sym].content = Water.new end
      end
    end 
    erb :game
  end

  post '/game' do 
      
  end  

  set :views, Proc.new{File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0
end
