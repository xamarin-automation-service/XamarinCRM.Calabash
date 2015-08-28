class PLA3DPrinterKitsPage < Calabash::Page
  include Helpers
  def trait
    if android?
      @trait = {marked: "PLA-JEWEL"}
    elsif ios?
      @trait = {marked: "PLA 3D Printer Kits"}
    end
    return @trait
  end

  def select_item(itemname)
    itemchosen = "PLA-#{itemname}"
    scroll_to("*", :down, itemchosen)
    tap itemchosen
  end
end

class Android::PLA3DPrinterKitsPage < PLA3DPrinterKitsPage
  include Calabash::Android
end
class IOS::PLA3DPrinterKitsPage < PLA3DPrinterKitsPage
  include Calabash::IOS
end