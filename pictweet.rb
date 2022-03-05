require "bundler"

Bundler.require

set :database, {adapter: "sqlite3", database: "tweets.sqlite3"}

class Tweet < ActiveRecord::Base
end

get "/" do
    @random = rand(6) + 1
    erb :index
end