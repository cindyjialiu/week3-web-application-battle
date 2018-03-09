require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    $name1 = Player.new(params[:player_name1])
    $name2 = Player.new(params[:player_name2])
    redirect to('/play')
  end

  get '/play' do
    @player_name1 = $name1.name
    @player_name2 = $name2.name
    erb(:play)
  end

  get '/attack' do
    @player_name1 = $name1.name
    @player_name2 = $name2.name
    erb(:attack)
  end

  run! if app_file == $0
end
