class SalesHomePage < Calabash::Page
  def trait
    if android?
      @trait = "*"
    elsif ios?
      @trait = "* marked:'WEEKLY AVERAGE'"
    end

    @trait
  end
end

class IOS::SalesHomePage < SalesHomePage; end
class Android::SalesHomePage < SalesHomePage; end