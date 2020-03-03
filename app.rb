require_relative './config/environment.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    instance = PigLatinizer.new
    @instance = instance.piglatinize(params[:user_phrase])
    erb :results
  end
end
