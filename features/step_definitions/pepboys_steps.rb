


# @selenium_driver.get("http://www.google.com/")

Given(/^I land on Home page$/) do
  # @selenium_driver.get("http://www.google.com/")
  $driver.@selenium_driver.get("http://www.google.com/")
  sleep(5)
  $driver.find_element(:id, 'lst-ib').click
  $driver.send_keys 'Steven Miller Dentedghost Appium'
  sleep(2)
  $driver.find_element(:id, 'tsbb').click
  sleep(5)
  puts 'Tests Succeeded!'
end