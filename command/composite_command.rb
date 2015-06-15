require_relative 'command'
class CompositeCommand < Command

  def initialize
    @commands = []
  end

  def execute
    @commands.each do |cmd|
      cmd.execute
    end
  end

  def add_command(command)
    @commands.push command
  end
end