class SplashScreenPage < Calabash::Page
  def trait
    if android?
      @sign_in_button = "*"
    elsif ios?
      @sign_in_button = "* marked:'SIGN IN'"
    end

    sleep 10
    unless query(@sign_in_button).nil?
      @present = true
      return @sign_in_button
    else
      @present = false
      return "*"
    end
  end

  def tap_sign_in
    if @present
      tap @sign_in_button
    end
  end
end

class IOS::SplashScreenPage < SplashScreenPage; end
class Android::SplashScreenPage < SplashScreenPage; end