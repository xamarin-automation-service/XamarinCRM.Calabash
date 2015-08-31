class CustomersPage < Calabash::Page
  def trait
    if android?
      @trait = {marked: "Customers"}
      @first_contact = {class: "LabelRenderer", index: 0}
    elsif ios?
      @trait = {marked: "Peninsula University"}
      @first_contact = {class: "UITableViewCellContentView", index:0}
    end
    return @trait
  end

  def click_first_contact
    tap @first_contact
  end

  def click_contact(contact_name)
    tap contact_name
  end
end

class Android::CustomersPage < CustomersPage
  include Calabash::Android
end
class IOS::CustomersPage < CustomersPage
  include Calabash::IOS
end