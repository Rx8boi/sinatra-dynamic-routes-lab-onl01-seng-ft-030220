require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @backwards = params[:name].reverse
    "#{@backwards}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @amt_times = params[:number].to_i
    @phrase = params[:phrase]
    "#{@amt_times}".times { "#{@phrase}" }
  end

end
