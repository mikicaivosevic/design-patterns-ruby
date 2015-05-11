require_relative '../../factory/animal_factory'
require_relative '../../factory/dog'
require_relative '../../factory/cat'
require_relative '../../factory/mouse'
require 'minitest/spec'
require 'minitest/autorun'

class SpecsAnimalFactory

  describe AnimalFactory do
    before do
      @cat = AnimalFactory.create :cat
      @dog = AnimalFactory.create :dog
      @mouse = AnimalFactory.create :mouse
    end

    describe "#AnimalFactory.create" do
      it "@dog must be Dog instance" do
        @dog.must_be_instance_of Dog
      end

      it "@cat must be Cat instance" do
        @cat.must_be_instance_of Cat
      end

      it "@mouse must be Mouse instance" do
        @mouse.must_be_instance_of Mouse
      end
    end

  end

end