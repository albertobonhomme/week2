require_relative './referee.rb'
require 'pry'

class Moves
	attr_accessor :player1output, :player2output, :player1attack, :player2attack

	def start(player1, player2)
		@player1attack = playermove_1
		@player2attack = playermove_2
		puts "Player1 has done a #{@player1atack} attack and Player 2 has done a #{@player2attack} attack"
		Referee.new.move(@player1attack, @player2attack, player1, player2)
	end


	def playermove_1
		puts "Please player1 input your next move (W for Weak, S for Strong and D for Definitive)"
		player1input = gets.chomp
		@player1output = action(player1input)
			if @player1output == 0 
				playermove_1
			else
				@player1output
			end
	end

	def playermove_2
		puts "Please player2 input your next move (W for Weak, S for Strong and D for Definitive)"
		player2input = gets.chomp
		@player2output = action(player2input)
			if @player2output == 0 
				playermove_2
			else
				@player2output
			end
	end

	def action(playerxmove)

		if playerxmove == "W"
			"weak"
		elsif playerxmove == "S"
			"strong"
		elsif playerxmove == "D"
			"definitive"
		else 
			0
		end
	end

end