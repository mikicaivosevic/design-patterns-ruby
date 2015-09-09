require_relative 'cat'
require_relative 'dog'
require_relative 'mouse'

class AnimalFactory
  #Usage example: AnimalFactory.cat
  def self.method_missing(name, *args, &block)
    create name
  end

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