require 'sinatra' 

get '/' do
  response['Cache-Control'] = "public, max-age=86400"
  erb :index
end