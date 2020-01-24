require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do
    x = PigLatinizer.new
    @piglatin = x.piglatinize(params["user_phrase"])
    erb :results
  end

  
end