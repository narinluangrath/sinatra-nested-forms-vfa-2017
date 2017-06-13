require './environment'
require_relative 'models/pirate'
require_relative 'models/ship'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end
      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end



# describe "GET '/'" do
#   before(:each) do
#     get '/'
#   end
#
#   it "returns a 200 status code" do
#     expect(last_response.status).to eq(200)
#   end
#
#   it "renders the instructions" do
#     expect(last_response.body).to include("Welcome to the Nested Forms Lab!")
#     expect(last_response.body).to include("let's navigate to the '/new'")
#   end
# end
