# encoding: UTF-8

class Order

  def initialize(options = {})
    @payment_method ||= options.fetch(:payment_method) { :cash }
  end

  def payment_method
    @payment_method
  end
end
