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
 
    erb :game
  end 

  get '/game' do 

    erb :game
  end  

  post '/game' do
   
    erb :game
  end  

  set :views, Proc.new{File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0
end
