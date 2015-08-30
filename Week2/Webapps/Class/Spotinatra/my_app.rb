require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'imdb'
require_relative './lib/spotinatra.rb'

songlist = SongList.new


get '/' do 

	erb :index

end

post '/songs/new' do 
	
	newsong = Song.new(params[:song], params[:artist])
	songlist.push_song(newsong.name, newsong.artist)

		if songlist.list.size < 10
			redirect to('/')
		else
			redirect to ('/enough')
		end

end

get '/enough' do 

@songs = songlist.list

	erb :songlist

end