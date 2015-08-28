class CoolingFansPage < Calabash::Page
  include Helpers

  def trait
    if android?
      @trait = {marked: "FAN-003"}
    elsif ios?
      @trait = {marked: "Cooling Fans"}
    end

    return @trait
  end

  def select_item(itemNumber)
    visible = "FAN-00#{itemNumber}"
    scroll_to("*", :down, visible)
  end

end

class Android::CoolingFansPage < CoolingFansPage
  include Calabash::Android
end
class IOS::CoolingFansPage < CoolingFansPage
  include Calabash::IOS
end