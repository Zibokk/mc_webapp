


# @selenium_driver.get("http://www.google.com/")

Given(/^I land on Home page$/) do
  # @selenium_driver.get("http://www.google.com/")
  $selenium_driver.get("http://www.google.com/")
  sleep(5)
  $selenium_driver.find_element(:id, 'lst-ib').click
  $selenium_driver.send_keys 'Steven Miller Dentedghost Appium'
  sleep(2)
  $selenium_driver.find_element(:id, 'tsbb').click
  sleep(5)
  puts 'Tests Succeeded!'
end