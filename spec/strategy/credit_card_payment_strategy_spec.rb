require 'spec_helper'
require "strategy/strategies/credit_card_payment_strategy"

describe CreditCardPaymentStrategy do
  let(:order) { stub }
  it "should process the payment" do
    described_class.new.process(order).should == "Credit Card order processed"
  end
end