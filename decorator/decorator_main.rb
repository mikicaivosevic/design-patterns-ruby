require_relative 'car'
require_relative 'audio_hi_fi'
require_relative 'sport_exhaust'

car = Car.new
puts car.cost
car.extend(AudioHiFi)
puts car.cost
car.extend(SportExhaust)
puts car.cost