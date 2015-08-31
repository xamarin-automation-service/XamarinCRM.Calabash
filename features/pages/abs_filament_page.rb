class ABSFilamentPage < Calabash::Page
  def trait
    if android?
      @trait = {marked:'FIL-ABS-VLT'}
    elsif ios?
      @trait = {marked:'ABS Filament'}
    end

    return @trait
  end

  def select_color(color)
    # if query(color_chosen).nil?
    #   scroll('*', :down)
    # end
    colorchosen = "FIL-ABS-#{color}"
    sleep 5
    #TODO: make these helper methods work
    # scroll_to("*", :down, colorchosen)
    tap "* {text CONTAINS '#{colorchosen}'}"
  end
end

class Android::ABSFilamentPage < ABSFilamentPage
  include Calabash::Android
end
class IOS::ABSFilamentPage < ABSFilamentPage
  include Calabash::IOS
end