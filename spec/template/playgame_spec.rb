require 'spec_helper'

require './template/games/walkingdead'


describe WalkingDead do

	it "should have the player name 'Andrew Lincoln' " do
		described_class.player_name.should == 'Andrew Lincoln'
	end

	it "should turn left" do
		described_class.left.should == 'Turning left!'
	end

	it "should go forward" do
		described_class.forward.should == 'Walking forward'
	end

	it "should go backwards" do
		described_class.backward.should == "Zombie on front, walking backward!"
	end

	it "should run the game" do
		described_class.run!.class.should == String
	end

end