require_relative 'image'

class RealImage < Image
  attr_accessor :file_name

  def initialize(file_name)
    @file_name = file_name
    load_from_disk @file_name
  end

  def display
    puts "Displaying: #{@file_name}"
    end

  private
  def load_from_disk(file_name)
    puts "Loading: #{file_name}"
  end
end