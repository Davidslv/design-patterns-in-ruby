class Playgame

	def self.player_name
		raise 'Using abstract method'
	end

	def self.forward
		raise 'Using abstract method'
	end

	def self.backward
		raise 'Using abstract method'
	end

	def self.left
		raise 'Using abstract method'
	end

	def self.right
		raise 'Using abstract method'
	end

	def self.dead
		'You have stepped a massive poop'
	end

	def self.run!
		player_name
		
		10.times do
			step = [forward, backward, left, right, dead].sample

			if step == dead
				return "#{dead}, #{gameover!}"
			else 
				p step
			end

		end

		gameover!
	end

	def self.gameover!
		'This game is over!'
	end

end