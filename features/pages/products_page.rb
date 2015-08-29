class ProductsPage < Calabash::Page
  def trait
    if android?
      @trait = {marked: "Products"}
    elsif ios?
      @trait = {marked: "Products"}
    end
    return @trait
  end

  def select_product(productname)
    tap productname
  end
end

class Android::ProductsPage < ProductsPage
  include Calabash::Android
end
class IOS::ProductsPage < ProductsPage
  include Calabash::IOS
end