require_relative 'command'
class RestartCommand < Command
  def execute
    puts 'Restart!'
  end
end