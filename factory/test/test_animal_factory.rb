require_relative '../../factory/animal_factory'
require_relative '../../factory/dog'
require_relative '../../factory/cat'
require_relative '../../factory/mouse'
require 'minitest/autorun'

class TestAnimalFactory < MiniTest::Test

  def setup
    @dog = AnimalFactory.create :dog
    @cat = AnimalFactory.create :cat
    @mouse = AnimalFactory.create :mouse
  end

  def test_factory
    assert @dog.instance_of? Dog
    assert @cat.instance_of? Cat
    assert @mouse.instance_of? Mouse
  end

end