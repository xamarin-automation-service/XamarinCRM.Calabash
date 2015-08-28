class PLAFilamentPage < Calabash::Page
  include Helpers
  def trait
    if android?
      @trait = {marked: "FIL-PLA-VLT"}
    elsif ios?
      @trait = {marked: "PLA Filament"}
    end
    return @trait
  end

  def select_color(color)
    colorchosen = "FIL-PLA-#{color}"
    scroll_to("*", :down, colorchosen)
    tap colorchosen
  end
end

class Android::PLAFilamentPage < PLAFilamentPage
  include Calabash::Android
end
class IOS::PLAFilamentPage < PLAFilamentPage
  include Calabash::IOS
end