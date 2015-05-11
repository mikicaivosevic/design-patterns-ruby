require_relative 'cat'
require_relative 'dog'
require_relative 'mouse'

class AnimalFactory

  def self.create animal
    case animal
      when :cat then Cat.new
      when :dog then Dog.new
      when :mouse then Mouse.new
      else
        raise 'Pass :cat, :dog or :mouse parameter'
    end
  end
end