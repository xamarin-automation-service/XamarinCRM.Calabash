Given(/^I navigate to products$/) do
  global_page = page(GlobalPage)
  global_page.await
  global_page.navigate_to_products
end

Given(/^I select product "([^"]*)"$/) do |product|
  products_page = page(ProductsPage)
  products_page.await
  products_page.select_product(product)
end

Given(/^I select part "([^"]*)"$/) do |part|
  threed_filament_page = page(ThreeDFilamentPage)
  threed_filament_page.await
  threed_filament_page.select_part(part)
end

Then(/^I select PLA Filament color "([^"]*)"$/) do |color|
  pla_filament_page = page(PLAFilamentPage)
  pla_filament_page.await
  pla_filament_page.select_color(color)
end

Then(/^I select ABS Filament color "([^"]*)"$/) do |color|
  abs_filament_page = page(ABSFilamentPage)
  abs_filament_page.await
  abs_filament_page.select_color(color)
end

Then(/^I go back$/) do
  global_page = page(GlobalPage)
  global_page.await
  global_page.go_back
end