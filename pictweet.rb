require "bundler"

Bundler.require

get "/" do
    @random = rand(6) + 1
    erb :index
end