require 'sinatra/base'

class BattleShips < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/game' do
    @player=params[:name]
    
    @shoot=params[:shoot]
    erb :game
  end

  set :views, Proc.new{File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0
end
