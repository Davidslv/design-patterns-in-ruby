require 'spec_helper'

require 'strategy/order'
require 'strategy/payment'
require 'strategy/payment_strategy'
require "strategy/strategies/cash_payment_strategy"
require "strategy/strategies/credit_card_payment_strategy"
require "strategy/strategies/paypal_payment_strategy"


#describe PaymentStrategy do
describe Payment do

  it "should process a cash payment" do
    order   = Order.new
    payment = described_class.new(order)
    payment.process.should == "Cash payment accepted"
  end
  
  it "should process a credit card payment" do
    order   = Order.new(:payment_method => :credit_card)
    payment = described_class.new(order)
    payment.process.should == "Credit Card order processed"
  end
  
  it "should process a paypal payment" do
    order   = Order.new(:payment_method => :paypal)
    payment = described_class.new(order)
    payment.process.should == "Paypal order processed"
  end
end
