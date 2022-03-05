require "bundler"

Bundler.require

set :database, {adapter: "sqlite3", database: "tweets.sqlite3"}

class Tweet < ActiveRecord::Base
end

get "/" do
    @tweets = Tweet.all
    erb :index
end

get "/tweets/new" do
    erb :new 
end

post "/tweets" do
#   binding.pry
    Tweet.create(params)
    redirect "/"
end