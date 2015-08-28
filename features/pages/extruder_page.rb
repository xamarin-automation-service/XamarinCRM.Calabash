class ExtruderPage < Calabash::Page
  include Helpers
  def trait
    if android?
      @trait = {marked: "EXTR-001"}
    elsif ios?
      @trait = {marked: "Extruders"}
    end
    return @trait
  end

  def select_item(itemnumber)
    itemchosen = "EXTR-00-#{itemnumber}"
    scroll_to("*", :down, itemchosen)
    tap itemchosen
  end
end

class Android::ExtruderPage < ExtruderPage
  include Calabash::Android
end
class IOS::ExtruderPage < ExtruderPage
  include Calabash::IOS
end