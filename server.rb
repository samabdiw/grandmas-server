require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    'Hi sassy Grandma!'
end

get '/:name?' do |name|
    # "<h1> Hi, my name is #{name}</h1>"
    # "Hi, #{name}"
    erb :index, :locals => {:name=>name}
end

