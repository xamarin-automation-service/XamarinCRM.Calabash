class GlobalPage < Calabash::Page
  def trait
    if android?
      @sales_tab = {marked: 'Sales'}
      @customers_tab = {marked: 'Customers'}
      @products_tab = {marked: 'Products'}
    elsif ios?
      @back_button = {marked: 'Back'}
      @sales_tab = {marked: 'SalesTab'}
      @customers_tab = {marked: 'CustomersTab'}
      @products_tab = {marked: 'ProductsTab'}
    end

    return '*'
  end

  def go_back
    sleep 2

    if android?
      press_back_button
    elsif ios?
      tap @back_button
    end
  end

  def navigate_to_sales
    tap @sales_tab
  end

  def navigate_to_customers
    tap @customers_tab
  end

  def navigate_to_products
    tap @products_tab
  end

end

class Android::GlobalPage < GlobalPage
  include Calabash::Android
end
class IOS::GlobalPage < GlobalPage
  include Calabash::IOS
end
