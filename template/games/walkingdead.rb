require './template/playgame'

class WalkingDead < Playgame

	def self.player_name
		'Andrew Lincoln'
	end

	def self.forward
		'Walking forward'
	end

	def self.backward
		"Zombie on front, walking backward!"
	end

	def self.left
		"Turning left!"
	end

	def self.right
		"Turning right!"
	end

end