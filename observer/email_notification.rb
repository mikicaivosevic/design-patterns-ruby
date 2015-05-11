require_relative 'notification'

class EmailNotification < Notification
  def update(user)
    if !user.is_active?
      puts "Email for #{user.full_name} with verification code sent to: #{user.email}"
    end
  end
end