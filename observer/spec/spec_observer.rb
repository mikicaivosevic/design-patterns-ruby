require_relative '../user'
require 'minitest/spec'
require 'minitest/autorun'

class SpecObserver
  describe User do

    before do
      @user = User.new "Mikica Ivosevic", "381650230232", "mikica.ivosevic@gmail.com"
    end

    it "Should send email and sms notification" do
      assert_output ("SMS for Mikica Ivosevic with verification code sent to: 381650230232\n"+
                        "Email for Mikica Ivosevic with verification code sent to: mikica.ivosevic@gmail.com\n"){
        @user.activate
      }
    end

    it "Check user status and activate method" do
      @user.status.must_be_same_as false
      @user.activate
      @user.status.must_be_same_as true
    end

    it "Check user data" do
      @user.full_name.must_include "Mikica Ivosevic"
      @user.email.must_include "mikica.ivosevic@gmail.com"
      @user.phone.must_include "381650230232"
    end
  end
end