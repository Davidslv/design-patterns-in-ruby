require 'spec_helper'

require 'strategy/order'

describe Order do
  it "should have `cash` as default payment" do
    described_class.new.payment_method.should == :cash
  end

  it "should accept `credit_card` as payment" do
    order = described_class.new(:payment_method => :credit_card)
    order.payment_method.should == :credit_card
  end

  it "should accept `paypal` as payment" do
    order = described_class.new(:payment_method => :paypal)
    order.payment_method.should == :paypal
  end
end
