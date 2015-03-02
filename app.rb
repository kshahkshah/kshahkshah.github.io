require 'sinatra' 

get '/' do
  response['Cache-Control'] = "public, max-age=86400"
  erb :index
end

get '/invite' do
  response['Cache-Control'] = "public, max-age=86400"
  erb :invite
end

get '/cv' do
  response['Cache-Control'] = "public, max-age=86400"
  erb :cv
end
