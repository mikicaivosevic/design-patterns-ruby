require_relative 'image'
require_relative 'real_image'

class ProxyImage < Image
  attr_accessor :real_image, :file_name

  def initialize(file_name)
    @file_name = file_name
  end

  def display
    if @real_image.nil?
      @real_image = RealImage.new @file_name
    end
    @real_image.display
  end
end