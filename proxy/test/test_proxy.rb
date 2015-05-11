require_relative '../proxy_image'
require 'minitest/autorun'

class TestProxy < MiniTest::Test

  def setup
    @proxy_image = ProxyImage.new '/file/system/img.png'
  end

  def test_proxy_image
    assert_output("Loading: /file/system/img.png\n"+
                      "Displaying: /file/system/img.png\n"){
      @proxy_image.display
    }

    assert_output("Displaying: /file/system/img.png\n"){
      @proxy_image.display
    }
  end
end