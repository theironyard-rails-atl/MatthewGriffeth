require 'sinatra'


get '/' do
  "Well, hello there."
end

get '/later' do
  "Come back some time."
end

get '/elevators'do
    status = ["NO!","Nope...", "Still no.", "Not yes."]
    puts "Are the elevators functional yet?"
    puts "#{status.sample}"
end
