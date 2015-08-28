require 'imdb'

class Retriever
	attr_accessor :movies, :moviesposters
	def initialize
		@movies = []
		@moviesposters = []
	end

	def getmovies(params)
		i = Imdb::Search.new(params)
			j = 0
				while j < 9
				@movies.push(i.movies[j])
				j+=1
				end
	end

	def printitle(array)
		array.each do |film|
			if film.poster == nil 
				
			else
				@moviesposters.push([film.poster,film.year])
			end
		end
	end

	def getrandomyear
		@moviesposters[rand(@moviesposters.size - 1)][1]
	end
end

