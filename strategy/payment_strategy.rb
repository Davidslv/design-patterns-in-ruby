# encoding: UTF-8

class PaymentStrategy

  def self.create(order)
    if order.payment_method == :credit_card
      return CreditCardPaymentStrategy.new
    elsif order.payment_method == :paypal
      return PaypalPaymentStrategy.new
    end
    CashPaymentStrategy.new
  end

end
