require_relative 'strategy'
class OperationSubstract < Strategy
  def doOperation(num1, num2)
    num1 - num2
  end
end