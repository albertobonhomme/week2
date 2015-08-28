class Referee

	def move(move_robot1, move_robot2, player1, player2)
		if move_robot1 == "weak" && move_robot2 == "weak"
			exception1
		elsif move_robot1 == "strong" && move_robot2 == "strong"
			exception2(move_robot1, player1, player2)
		elsif move_robot1 == "definitive" && move_robot2 == "definitive"
			exception3(player1, player2)
		elsif move_robot1 == "definitive" && move_robot2 == "weak"
			exception4(move_robot2, player2, player1)
		elsif move_robot1 == "weak" && move_robot2 == "definitive"
			exception4(move_robot1, player1, player2)
		else
			normal(move_robot1, player1, player2)
			normal(move_robot2, player2, player1)
		end

		start_again(player1, player2)
	end

	def start_again(player1, player2)

		if player1.health < 1 || player2.health < 1
			puts "GAME OVER"
		else
			Moves.new.start(player1,player2)
		end

	end

	def normal (move, origin, target)
		target.health = target.health  - origin.send(move)
		puts "#{origin.name} inflicts a #{move} attack on #{target.name} causing him a #{origin.send(move)} damage "
		puts "#{target.name} health is now #{target.health}"
	end

	def exception1
		puts "Both players selected weak attack, so no one takes any damage!"
	end

	def exception2 (move, origin, target)
		target.health = target.health  - target.send(move)
		origin.health = origin.health  - origin.send(move)
		puts "Both players selected strong attack! Double damage for the two of them!"
		puts "#{origin.name} has now #{origin.health} health and #{target.name} has now #{target.health} health"
	end

	def exception3 (origin, target)
		target.health = 0
		origin.health = 0
		puts "Both players selected definitive attack! This is massive! Both robots are dead"
	end

	def exception4 (move, origin, target)
		target.health = target.health  - target.send(move) * 2
		puts "#{origin.name} attacked using weak attack and #{target} attacked with definitive! Only weak applies!"
		puts "#{target.name} health is now #{target.health}"
	end

end