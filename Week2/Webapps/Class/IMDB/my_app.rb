require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'imdb'
require_relative './lib/IMDB.rb'



get '/' do 

	erb :index

end

post '/search' do 
	peliculas = Retriever.new
	peliculas.getmovies(params[:input])
	peliculas.printitle(peliculas.movies)
	@mostrar = peliculas.moviesposters
	@year = peliculas.getrandomyear
	erb :solution

end
