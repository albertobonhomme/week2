require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'humanize'

@convertednumber = 0

get '/' do

	erb :index
end

post '/convert' do

@convertednumber = (params[:input]).to_i.humanize
	erb :index
end