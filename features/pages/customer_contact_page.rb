class CustomerContactPage < Calabash::Page
  def trait
    sleep 2

    @trait = {marked:'Address'}
    @customer_orders = {marked:'Orders'}
    @customer_sales = {marked:'Sales'}
    @dial_cancel_button = {marked:'No'}

    if android?
      @phone_button = {class:'FormsImageView', index: 2}
      @map_button = {class:'FormsImageView', index: 3}
    elsif ios?
      @phone_button = {marked:'phone_ios'}
      @map_button = {marked:'map_marker_ios'}
    end

    return @trait
  end

  def verify_contact_info_present
    wait_for_view({marked:'Contact'})
    wait_for_view({marked:'Phone'})
    wait_for_view({marked:'Address'})
    return self
  end

  def navigate_to_customer_orders
    tap @customer_orders
  end

  def navigate_to_customer_sales
    tap @customer_sales
  end

  def check_phone
    tap @phone_button
    screenshot 'Open phone'
    tap @dial_cancel_button
    screenshot 'Cancel call'
    tap @phone_button
    screenshot 'Open phone again'
  end

  def check_navigation
    tap @map_button
    sleep 3
    screenshot 'Open maps'
  end

end

class Android::CustomerContactPage < CustomerContactPage
  include Calabash::Android
end
class IOS::CustomerContactPage < CustomerContactPage
  include Calabash::IOS
end