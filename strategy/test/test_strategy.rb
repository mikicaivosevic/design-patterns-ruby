require_relative '../operation_add'
require_relative '../operation_substract'
require_relative '../strategy_context'
require 'minitest/autorun'

class TestStrategy < MiniTest::Test
  def setup
    @operation_add = OperationAdd.new
    @operation_substract = OperationSubstract.new
  end

  def test_operation_add
    assert_equal(7, @operation_add.doOperation(3, 4))
    assert_equal(5, @operation_add.doOperation(2, 3))
  end

  def test_operation_substract
    assert_equal(1, @operation_substract.doOperation(5, 4))
    assert_equal(3, @operation_substract.doOperation(6, 3))
  end

  def test_strategy_context
    @strategy_context = StrategyContext.new @operation_add
    assert_equal(10, @strategy_context.execute_strategy(6,4))
    assert_equal(17, @strategy_context.execute_strategy(10,7))

    @strategy_context = StrategyContext.new @operation_substract
    assert_equal(6, @strategy_context.execute_strategy(10,4))
    assert_equal(16, @strategy_context.execute_strategy(20,4))
  end
end