And(/^I navigate to customers page$/) do
  global_page = page(GlobalPage)
  global_page.await
  global_page.navigate_to_customers
end

And(/^I click the first contact$/) do
  customers_page = page(CustomersPage)
  customers_page.await
  customers_page.click_first_contact
end

Then(/^I verify contact info is present$/) do
  customer_contact_page = page(CustomerContactPage)
  customer_contact_page.await
  customer_contact_page.verify_contact_info_present
end

And(/^I navigate to customer orders page$/) do
  customer_contact_page = page(CustomerContactPage)
  customer_contact_page.await
  customer_contact_page.navigate_to_customer_orders
end

And(/^I navigate to customer sales page$/) do
  customer_orders_page = page(CustomerOrdersPage)
  customer_orders_page.await
  customer_orders_page.navigate_to_customer_sales

  customer_sales_page = page(CustomerSalesPage)
  customer_sales_page.await
end

Then(/^I check the navigation$/) do
  customer_contact_page = page(CustomerContactPage)
  customer_contact_page.await
  customer_contact_page.check_navigation
end

Then(/^I check the phone/) do
  customer_contact_page = page(CustomerContactPage)
  customer_contact_page.await
  customer_contact_page.check_phone
end