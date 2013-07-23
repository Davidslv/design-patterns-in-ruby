require 'spec_helper'
require "strategy/strategies/paypal_payment_strategy"

describe PaypalPaymentStrategy do
  let(:order) { stub }
  it "should process the payment" do
    described_class.new.process(order).should == "Paypal order processed"
  end
end