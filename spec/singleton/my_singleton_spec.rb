require 'spec_helper'

require './singleton/my_singleton'

describe MySingleton do

	it 'should not be a eager class' do
		# will return 1 if is a eager class and 0 if not
		ObjectSpace.each_object(described_class){}.should == 0
	end

	it 'should raise an error when calling the new method' do
		# `new` method is a private method
		expect {
			described_class.new
		}.to raise_error
	end

	it 'should always output the same instance' do
		singleton_instance = described_class.instance
		MySingleton.instance.should eql(singleton_instance)
		MySingleton.instance.class.should eql(singleton_instance.class)
	end
end