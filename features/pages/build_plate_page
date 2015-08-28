class BuildPlatePage < Calabash::Page
  def trait
    if android?
      @trait = {marked:"Sign in"}
    elsif ios?
      @trait = {marked:"Sign in"}
    end

    return @trait
  end

  def select_item(item_name)
    tap item_name
  end

end

class Android::BuildPlatePage < BuildPlatePage
  include Calabash::Android
end
class IOS::BuildPlatePage < BuildPlatePage
  include Calabash::IOS
end