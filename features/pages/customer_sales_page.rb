class CustomerSalesPage < Calabash::Page
  def trait
    @customer_orders = {marked: 'Orders'}
    @customer_contact = {marked: 'Customer'}

    @trait = {marked: 'WEEKLY AVERAGE'}
  end

  def navigate_to_customer_orders
    tap @customer_orders
  end

  def navigate_to_customer_contact
    tap @customer_contact
  end
end

class Android::CustomerSalesPage < CustomerSalesPage
  include Calabash::Android
end
class IOS::CustomerSalesPage < CustomerSalesPage
  include Calabash::IOS
end
