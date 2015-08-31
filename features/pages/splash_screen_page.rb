class SplashScreenPage < Calabash::Page
  def trait
    if android?
      @sign_in_button = {marked:'SIGN IN'}
    elsif ios?
      @sign_in_button = {marked:'SIGN IN'}

    end

    sleep 10

    @present = query(@sign_in_button).length != 0

    if @present
      return @sign_in_button
    else
      return "*"
    end
  end

  def tap_sign_in
    if @present
      tap @sign_in_button
    end
  end
end


class Android::SplashScreenPage < SplashScreenPage
  include Calabash::Android
end
class IOS::SplashScreenPage < SplashScreenPage
  include Calabash::IOS
end
