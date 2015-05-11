require 'minitest/autorun'
require_relative '../user'

class TestObserver < MiniTest::Test
  def setup
    @user = User.new "Mikica Ivosevic", "381650230232", "mikica.ivosevic@gmail.com"
  end

  def test_notification
    assert_equal false, @user.status
    assert_output ("SMS for Mikica Ivosevic with verification code sent to: 381650230232\n"+
                      "Email for Mikica Ivosevic with verification code sent to: mikica.ivosevic@gmail.com\n"){
      @user.activate
    }
    assert_equal true, @user.status
  end

  def test_data
    assert_includes "Mikica Ivosevic", @user.full_name
    assert_includes "381650230232", @user.phone
    assert_includes "mikica.ivosevic@gmail.com", @user.email
  end
end