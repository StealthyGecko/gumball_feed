require 'rubygems'
require 'sinatra'
require 'sinatra/static_assets'
require 'twitter'

before do
  @title = "Gumball feed"
  @keywords = "Gumball, 3000, rally, feed, tweets"
  @description = "This application is a simple twitter based application which displays all tweets using the #Gumball3000 hashtag"
  @search = Twitter::Search.new
end

get "/" do
  @hashtags = @search.hashtag("Gumball3000").language("en").no_retweets
  erb :index
end
