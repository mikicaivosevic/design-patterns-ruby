require_relative '../../singleton/singleton_animal'
require 'minitest/autorun'

class TestSingletonAnimal < MiniTest::Test

  def setup
    @animal = SingletonAnimal.instance
    @animal.name = :ime
    @animal.years = 10
  end

  def test_instance
    assert @animal.instance_of? SingletonAnimal
  end

  def test_singleton_attr
    assert @animal.name == :ime
    assert @animal.years == 10
  end

  def test_new
    assert_raises NoMethodError do
      SingletonAnimal.new
    end
  end

end