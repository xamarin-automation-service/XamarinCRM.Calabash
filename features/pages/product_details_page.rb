class ProductDetailsPage < Calabash::Page
  def trait
    @add_to_order_button = {marked: "ADD TO ORDER"}

    if android?
      @trait = {marked: "action_bar_container"}
    elsif ios?
      @trait = {marked: "Back"}
    end
    return @trait
  end

  def verify_product
    #TODO: Add Logic
    screenshot 'Product Details Page'
  end

  def add_to_order
    tap @add_to_order_button
  end
end

class Android::ProductDetailsPage < ProductDetailsPage
  include Calabash::Android
end
class IOS::ProductDetailsPage < ProductDetailsPage
  include Calabash::IOS
end