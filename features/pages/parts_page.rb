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
    tap partname
  end
end