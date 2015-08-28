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
end

class Android::CustomerOrderDetailsPage < CustomerOrderDetailsPage
  include Calabash::Android
end
class IOS::CustomerOrderDetailsPage < CustomerOrderDetailsPage
  include Calabash::IOS
end