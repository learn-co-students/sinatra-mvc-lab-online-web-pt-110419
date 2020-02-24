require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    word = params[:user_phrase]
    value = PigLatinizer.new
      output = value.piglatinize(word)
    "#{output}"
  end

end
