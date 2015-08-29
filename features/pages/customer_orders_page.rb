class CustomerOrdersPage < Calabash::Page
  def trait
    @trait = {marked: "NEW ORDER"}
    @customer_contact = {marked: "Customer"}
    @customer_sales = {marked: "Sales"}
    @new_order_button = {marked: "NEW ORDER"}

    if android?
      @second_order = {class: "LabelRenderer", child:20}
    elsif ios?
      @second_order = {class: "UITableViewCellContentView", index:1}
    end

    return @trait
  end

  def navigate_to_customer_contact
    tap @customer_contact
  end

  def navigate_to_customer_sales
    tap @customer_sales
  end

  def select_first_order
    tap @second_order
  end

  def add_new_order
    tap @new_order_button
  end
end

class Android::CustomerOrdersPage < CustomerOrdersPage
  include Calabash::Android
end
class IOS::CustomerOrdersPage < CustomerOrdersPage
  include Calabash::IOS
end