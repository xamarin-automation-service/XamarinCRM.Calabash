class LoginPage < Calabash::Page
  def trait
    if android?
      @sign_in_button = {marked: 'Sign in'}
    elsif ios?
      @sign_in_button = {marked: 'Sign in'}
    end

    sleep 10
    @present = query(@sign_in_button).length != 0

    if @present
      return @sign_in_button
    else
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