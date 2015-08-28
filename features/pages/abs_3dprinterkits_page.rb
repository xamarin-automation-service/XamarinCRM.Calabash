class ABS3DPrinterKitPage < Calabash::Page
  include Helpers
  def trait
    if android?
      @trait = {marked: "ABS-CELL"}
    elsif ios?
      @trait = {marked: "ABS 3D Printer Kits"}
    end
    return @trait
  end

  def select_item(itemname)
    itemchosen = "ABS-#{itemname}"
    scroll_to("*", :down, itemchosen)
    tap itemchosen
  end
end

class Android::ABS3DPrinterKitPage < ABS3DPrinterKitPage
  include Calabash::Android
end
class IOS::ABS3DPrinterKitPage < ABS3DPrinterKitPage
  include Calabash::IOS
end