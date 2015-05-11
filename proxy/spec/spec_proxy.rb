require_relative '../proxy_image'
require 'minitest/autorun'
require 'minitest/spec'

class SpecProxy
  describe ProxyImage do
    before do
      @proxy_image = ProxyImage.new '/file/system/img.png'
    end

    it "should output Loading: /file/system/img.png\nDisplaying: /file/system/img.png\n" do
      assert_output("Loading: /file/system/img.png\n"+
                        "Displaying: /file/system/img.png\n"){
        @proxy_image.display
      }
    end

    it "should output Loading: /file/system/img.png\n" do
      @proxy_image.display
      assert_output("Displaying: /file/system/img.png\n"){
        @proxy_image.display
      }
    end
  end
end