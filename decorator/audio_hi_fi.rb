module AudioHiFi
  def initialize(car)
    @car = car
  end

  def cost
    super + 2500
  end
end