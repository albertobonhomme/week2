require_relative './moves.rb'
require_relative './robots.rb'
require 'pry'

class Robotcage
	attr_accessor :player1, :player2,
	def initialize
		@player1 = Robot.new("Player1")
		@player2 = Robot.new("Player2")
	end

	def start_the_game
		Moves.new.start(@player1,@player2)
	end
end


game = Robotcage.new

game.start_the_game