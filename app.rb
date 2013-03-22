require 'sinatra' 

get '/' do
  response['Cache-Control'] = "public, max-age=86400"
  erb :index
end

get '/cv' do
  response['Cache-Control'] = "public, max-age=86400"
  erb :cv
end

get '/tumblr' do
  erb :tumblr
end
