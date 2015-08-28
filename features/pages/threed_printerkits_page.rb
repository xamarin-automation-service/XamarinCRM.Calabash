class ThreeDPrinterKitsPage < Calabash::Page
  def trait
    if android?
      @trait = {marked: "ABS 3D Printer Kits"}
    elsif ios?
      @trait = {marked: "3D Printer Kits"}
    end
    return @trait
  end

  def select_part(partname)
    tap partname
  end
end

class Android::ThreeDPrinterKitsPage < ThreeDPrinterKitsPage
  include Calabash::Android
end
class IOS::ThreeDPrinterKitsPage < ThreeDPrinterKitsPage
  include Calabash::IOS
end