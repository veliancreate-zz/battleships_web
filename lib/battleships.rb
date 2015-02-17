require 'sinatra/base'

class BattleShips < Sinatra::Base
  get '/' do
    'Hello BattleShips!'
  end

  set :views, Proc.new{File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0
end
