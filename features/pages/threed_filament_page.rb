class ThreeDFilamentPage < Calabash::Page
  def trait
    if android?
    @trait = {marked: "PLA Filament"}
    elsif ios?
      @trait = {marked: "3D Filament"}
    end
    return @trait
  end

  def select_part(partname)
    tap partname
  end
end

class Android::ThreeDFilamentPage < ThreeDFilamentPage
  include Calabash::Android
end
class IOS::ThreeDFilamentPage < ThreeDFilamentPage
  include Calabash::IOS
end