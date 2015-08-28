class StepperMotorsPage < Calabash::Page
  include Helpers
  def trait
    if android?
      @trait = {marked: "MOT-12V"}
    elsif ios?
      @trait = {marked: "Stepper Motors"}
    end
    return @trait
  end

  def select_item(itemnumber)
    itemchosen = "MOT-#{itemnumber}-V"
    scroll_to("*", :down, itemchosen)
    tap itemchosen
  end
end

class Android::StepperMotorsPage < StepperMotorsPage
  include Calabash::Android
end
class IOS::StepperMotorsPage < StepperMotorsPage
  include Calabash::IOS
end