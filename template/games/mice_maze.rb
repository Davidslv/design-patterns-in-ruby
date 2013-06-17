class MiceMaze

  attr_accessor :current_position
  attr_accessor :maze

  def initialize
    maze = self.mazes.sample
    current_position = maze
  end

  def up
    if current_position.up.nil?
      0
    else
      current_position = current_position.up
    end
  end

  def gameover?
    current_position.objective?
  end


  def self.mazes
    [ simple_maze, medium_maze ]
  end

  private
  def self.simple_maze
    slot1 = MazeSlot.new(:objective => true)
    slot2 = MazeSlot.new(:down => slot1, :up => slot3)
    slot3 = MazeSlot.new(:down => slot2, :up => slot4)
    slot4 = MazeSlot.new(:down => slot3)
  end
end
