class LoginPage < Calabash::Page
  def trait
    if android?
      @sign_in_button = "* marked:'Sign in'"
    elsif ios?
      @sign_in_button = "* marked:'Sign in'"
    end

    unless query(@sign_in_button).nil?
      @present = true
      return @sign_in_button
    else
      @present = false
      return "*"
    end
  end

  def sign_in(username, password)
    if @present
      enter_text_in "webView css:'#cred_userid_inputtext'", username
      enter_text_in "webView css:'#cred_password_inputtext'", password
      tap "webView css:'#cred_sign_in_button'"
    end
  end
end

class Android::LoginPage < LoginPage
  include Calabash::Android
end
class IOS::LoginPage < LoginPage
  include Calabash::IOS
end