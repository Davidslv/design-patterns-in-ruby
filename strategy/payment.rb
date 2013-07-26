class Payment
  STRATEGIES = [:credit_card, :cash, :paypal]

  def initialize(order)
    validate_strategy(order.payment_method)
    @order = order
    @strategy = strategy_class(@order.payment_method).new
  end

  def process
    @strategy.process(@order)
  end

  private

  def validate_strategy(strategy)
    raise TypeError.new("Invalid strategy") unless STRATEGIES.include?(strategy)
  end

  def strategy_class(strategy)
    class_name = "#{strategy}_payment_strategy"
    class_name = class_name.split('_').map(&:capitalize).join
    Object.const_get(class_name)
  end

end
