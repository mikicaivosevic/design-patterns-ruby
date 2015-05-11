require_relative 'sms_notification'
require_relative 'email_notification'
require 'observer'

class User
  include Observable
  attr_accessor :full_name, :phone, :status, :email

  def initialize(full_name, phone, email)
    @full_name, @phone, @status, @email = full_name, phone, false, email
    add_observer SmsNotification.new
    add_observer EmailNotification.new
  end

  def is_active?
    @status == true
  end

  def activate
    changed
    notify_observers self
    @status = true
  end
end

user = User.new "Mikica Ivosevic", "381650230232", "mikica.ivosevic@gmail.com"
user.activate
