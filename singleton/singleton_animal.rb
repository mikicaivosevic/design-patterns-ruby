require 'singleton'
class SingletonAnimal
  include Singleton
  attr_accessor :name, :years
end