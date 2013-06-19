class Game

  def self.up
    raise 'Using abstract method'
  end

  def self.right
    raise 'Using abstract method'
  end

  def self.down
    raise 'Using abstract method'
  end

  def self.left
    raise 'Using abstract method'
  end


  def self.run!
    raise 'Not implemented yet!'
  end

  def self.gameover!
    'This game is over!'
  end
  
end