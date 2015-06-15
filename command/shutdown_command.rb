require_relative 'command'
class ShutdownCommand < Command
  def execute
    puts 'Shutdown!'
  end
end