class SalesHomePage < Calabash::Page
  def trait
    if android?
      @trait = {marked:'WEEKLY AVERAGE'}
    elsif ios?
      @trait = {marked:'WEEKLY AVERAGE'}
    end

    @trait
  end
end

class Android::SalesHomePage < SalesHomePage
  include Calabash::Android
end
class IOS::SalesHomePage < SalesHomePage
  include Calabash::IOS
end