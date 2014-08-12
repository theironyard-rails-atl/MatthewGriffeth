require 'sinatra'


get '/' do
  "Well, hello there."
end

get '/later' do
  "Come back some time."
end

get '/elevators'do
    status = ["NO!","Nope...", "Still no.", "Not yes."]
   "Are the elevators functional yet?...#{status.sample}"
haml :elevators
end
