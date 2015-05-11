require_relative 'strategy'
require_relative 'operation_add'
require_relative 'operation_substract'

class StrategyContext
  attr_accessor :strategy

  def initialize(strategy)
    @strategy = strategy
  end

  def execute_strategy(num1, num2)
    @strategy.doOperation num1, num2
  end
end