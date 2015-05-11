require_relative 'notification'

class SmsNotification < Notification
  def update(user)
    if !user.is_active?
      puts "SMS for #{user.full_name} with verification code sent to: #{user.phone}"
    end
  end
end