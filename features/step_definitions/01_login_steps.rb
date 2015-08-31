Given(/^I need to pass splash screen$/) do
  splash_screen = page(SplashScreenPage)
  splash_screen.await
  splash_screen.tap_sign_in
end

Then(/^I enter login information$/) do
  login_page = page(LoginPage)
  login_page.await
  login_page.sign_in("sally@xamcrm.onmicrosoft.com", "P@ssword")
end

Then(/^I am on the Sales Page$/) do
  sales_home_page = page(SalesHomePage)
  sales_home_page.await
end

Given(/^I log in$/) do
  splash_screen = page(SplashScreenPage)
  splash_screen.await
  splash_screen.tap_sign_in

  sleep 6

  login_page = page(LoginPage)
  login_page.await
  login_page.sign_in("sally@xamcrm.onmicrosoft.com", "P@ssword")

  sleep 6

  sales_home_page = page(SalesHomePage)
  sales_home_page.await
end