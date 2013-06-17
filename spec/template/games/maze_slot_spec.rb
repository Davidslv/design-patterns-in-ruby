require 'spec_helper'
require 'template/games/maze_slot'

describe MazeSlot do

  %w[up right down left].each do |movement|
    describe "##{movement}" do
      before do
        @close_maze_slot = MazeSlot.new
      end

      it "allows to be initialized" do
        instance = described_class.new(:"#{movement}" => @close_maze_slot)
        instance.send(:"#{movement}").should eql(@close_maze_slot)
      end

      it "allows to be set" do
        subject.send(:"#{movement}=", @close_maze_slot)
        subject.send(:"#{movement}").should eql(@close_maze_slot)
      end
    end
  end

  describe '#objective' do
    it 'allows to set as objective' do
      subject.objective = true
      subject.objective?.should eql(true)
    end

    it 'allows to set as objective on initializiation' do
      instance = described_class.new(:objective => true)
      instance.objective?.should eql(true)
    end

    it 'returns false if its not the objective slot' do
      subject.objective?.should eql(false)
    end
  end
end
