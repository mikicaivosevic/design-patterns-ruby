require_relative '../../singleton/singleton_animal'
require 'minitest/spec'
require 'minitest/autorun'

class SpecsSingletonAnimal

  describe SingletonAnimal do
    before do
      @animal = SingletonAnimal.instance
    end

    describe "#SingletonAnimal" do
      it "should raises on SingletonAnimal.new" do
        assert_raises NoMethodError do
          SingletonAnimal.new
        end
      end

      it "should return SingletonAnimal instance" do
        assert SingletonAnimal.instance.instance_of? SingletonAnimal
      end

    end
  end

end