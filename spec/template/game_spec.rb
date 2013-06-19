require 'spec_helper'
require "template/game"

describe Game do

  %w[up right down left].each do |movement|
    describe "##{movement}" do
      it "should raise an error" do
        expect { self.movement }.to raise_error
      end
    end
  end
  
  describe "#gameover!" do
    it "should end the game" do
      described_class.gameover!.should == "This game is over!"
    end
  end
  
end