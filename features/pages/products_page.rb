class ProductsPage < Calabash::Page
  def trait
    @trait = {marked: "Products"}
  end

  def select_product(productname)
    sleep 4
    tap "* {text CONTAINS '#{productname}'}"
  end
end

class Android::ProductsPage < ProductsPage
  include Calabash::Android
end
class IOS::ProductsPage < ProductsPage
  include Calabash::IOS
end