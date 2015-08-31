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
    color_chosen = "Fil-ABS-#{color}"
    if query(color_chosen).nil?
      scroll('*', :down)
    end
    tap color_chosen
  end
end

class Android::ABSFilamentPage < ABSFilamentPage
  include Calabash::Android
end
class IOS::ABSFilamentPage < ABSFilamentPage
  include Calabash::IOS
end