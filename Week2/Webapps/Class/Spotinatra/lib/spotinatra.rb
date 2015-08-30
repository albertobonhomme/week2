class SongList
	attr_accessor :list, :name, :artist
	def initialize
		@list = []
	end

	def push_song(name, artist)
		@list.push([name,artist])
	end
end


class Song
	attr_accessor :name, :artist
	def initialize(name, artist)
		@name = name
		@artist = artist
	end
end