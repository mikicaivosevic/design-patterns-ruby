module SportExhaust
  def initialize(car)
    @car = car
  end

  def cost
    super + 4000
  end
end