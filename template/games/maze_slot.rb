class MazeSlot
  attr_accessor :up, :right, :down, :left, :objective

  def initialize(attrs = {}) 
    attrs.each do |key, value|
      self.send(:"#{key}=", value)
    end
  end

  def objective?
    !! objective
  end
end
