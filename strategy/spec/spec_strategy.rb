require_relative '../operation_add'
require_relative '../operation_substract'
require_relative '../strategy_context'
require 'minitest/autorun'
require 'minitest/spec'

class SpecStrategy
  describe StrategyContext do

    before do
      @operation_add = OperationAdd.new
      @operation_substract = OperationSubstract.new
    end

    it '#operation_add should return 10' do
      @operation_add.doOperation(4,6).must_be_same_as 10
    end

    it '#operation_substract should return 15' do
      @operation_substract.doOperation(20,5).must_be_same_as 15
    end

    it '#strategy_context => #operation_add should return 7' do
      @strategy_context = StrategyContext.new @operation_add
      @strategy_context.execute_strategy(3,4).must_be_same_as 7
    end

    it '#strategy_context => #operation_substract should return 17' do
      @strategy_context = StrategyContext.new @operation_substract
      @strategy_context.execute_strategy(20,3).must_be_same_as 17
    end


  end
end