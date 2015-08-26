class LoginPage < Calabash::Page
  def trait
    puts 0
    if android?
      @sign_in_button = "*"
    else
      puts 1
      puts
      @sign_in_button = "* marked:'Sign in'"
    end

    # @sign_in_button
  end

  def sign_in(username, password)
    tap @sign_in_button
    # if @present
    #   enter_text "webView css:'#cred_userid_inputtext'", username
    #   enter_text "webView css:'#cred_password_inputtext'", password
    #   touch "webView css:'#cred_sign_in_button'"
    # end
  end
end

class IOS::LoginPage < LoginPage; end
class Android::LoginPage < LoginPage; end