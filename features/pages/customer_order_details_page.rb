class CustomerOrderDetailsPage < Calabash::Page
  def trait
    @trait = {marked:'Company'}
    @save_button = {marked:'Save'}
    @exit_button = {marked:'Exit'}
    @deliver_order_button = {marked:'Deliver Order'}
    @confirm_delivery_button = {marked:'Yes, Deliver'}

    if android?
      @product_field = {class:'EntryEditText', descendant:0}
      @price_field = {class:'EntryEditText', descendant:1}
      @date_field = {class:'EditText', index: 0}
    elsif ios?
      @product_field = {class:'UITextFieldLabel', descendant:0}
      @price_field = {class:'UITextFieldLabel', descendant:1}
      @date_field = {class:'UITextFieldLabel', index: 2}
    end

    return @trait
  end

  def change_product
    touch @product_field
  end

  def change_price amount
    touch @price_field
    clear_text
    enter_text "$ #{amount}"
  end

  def change_date
    #TODO: Need to add logic
  end

  def save_and_exit
    touch @save_button
    screenshot 'Dialog Appears'
    touch @save_button
  end

  def deliver_order
    touch @deliver_order_button
    screenshot 'Dialog Appears'
    touch @confirm_delivery_button
  end

end

class Android::CustomerOrderDetailsPage < CustomerOrderDetailsPage
  include Calabash::Android
end
class IOS::CustomerOrderDetailsPage < CustomerOrderDetailsPage
  include Calabash::IOS
end