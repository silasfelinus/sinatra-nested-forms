require './environment'

module FormsLab
  class App < Sinatra::Base

  get '/' do
    erb :root
  end

  get '/new' do
    erb :new
  end

  post '/pirates' do
    @pirate = Pirate.new(params[:pirate])
    params[:pirate][:ships].each do |details|
      Ship.new(details)
    end

    @ships = Ship.all
    @ship1 = @ships[0]
    @ship2 = @ships[1]
    erb :show
  end

end
end
