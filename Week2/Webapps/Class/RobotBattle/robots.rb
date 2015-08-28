
class Robot
	attr_accessor :health, :name
	def initialize(name)
		@health = 200
		@name = name
	end
	def weak
		10
	end

	def strong
		20
	end

	def definitive
		50
	end
end