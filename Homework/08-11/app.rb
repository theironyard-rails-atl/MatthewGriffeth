require 'sinatra'
require 'haml'
require 'pry'

require './lib/averager.rb'

enable :sessions

get '/' do
  haml :root
end

get '/later' do
  haml :later
end


get '/about' do
  haml :about
end

get '/elevators' do
    status = ["NO!","Nope...", "Still no.", "Not yes."].sample
haml :elevators
end

get '/averager' do
  haml :averager
end
