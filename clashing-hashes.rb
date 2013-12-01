require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@name = "Mateo" 
	@show_description = true
	erb :index
end

post '/twitter' do
	@first = params[:first]
	@second = params[:second]
	erb :twitter_results
end
