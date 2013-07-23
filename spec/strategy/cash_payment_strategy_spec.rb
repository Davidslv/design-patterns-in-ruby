require 'spec_helper'
require "strategy/strategies/cash_payment_strategy"

describe CashPaymentStrategy do
  let(:order) { stub }
  it "should process the payment" do
    described_class.new.process(order).should == "Cash payment accepted"
  end
end