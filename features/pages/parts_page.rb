class PartsPage < Calabash::Page
  def trait
    if android?
      @trait = {marked: "Build Plates"}
    elsif ios?
      @trait = {marked: "Parts"}
    end
    return @trait
  end

  def select_part(partname)
    tap "* {label CONTAINS '#{partname}'}"
  end
end

class Android::PartsPage < PartsPage
  include Calabash::Android
end
class IOS::PartsPage < PartsPage
  include Calabash::IOS
end