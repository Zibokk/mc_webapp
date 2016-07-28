require 'rubygems'
require 'appium_lib'
require 'cucumber'

desired_caps = {
    caps: {
        platformName: 'iOS',
        platformVersion: '9.2',
        deviceName: 'iPhone 6',
        browserName: 'Safari',
    }
}

# Create a new Appium driver.  More information at
# http://www.rubydoc.info/github/appium/ruby_lib/Appium/Driver:initialize
#
# Appium specific driver with helpers available.
@appium_driver = Appium::Driver.new(desired_caps)


# Standard Selenium driver without any Appium methods.
@selenium_driver = @appium_driver.start_driver


# Now promote appium methods to class instance methods.  More information at http://www.rubydoc.info/github/appium/ruby_lib/Appium.promote_appium_methods
# Without promoting we would need to make all calls with the @appium_driver, example:
#     @appium_driver.find_element(:id, 'lst-ib')
# After promoting to a class instance method we can the method directly, example:
#     find_element(:id, 'lst-ib')
Appium.promote_appium_methods Object


# Next open the mobile version of the Google search.
# @selenium_driver.get("http://www.google.com/")
# sleep(5)
# element = find_element(:id, 'lst-ib')
# element.click
# element.send_keys 'Steven Miller Dentedghost Appium'
# sleep(2)
# element = find_element(:id, 'tsbb')
# element.click
# sleep(5)
# driver_quit
# puts 'Tests Succeeded!'


@selenium_driver.get("http://m.herroom.com/?_mwexperienceid=fdbb8698-da84-47fb-9117-bc2170f61f6e")
sleep(3)
element = find_element(:xpath, '//*[@id="mw_header"]/div[3]/div[1]/div')
element.click
sleep(3)
element = find_element(:xpath, '//*[@id="mw_side_slider_nav"]/div/div/div[6]/a')
element.click
sleep(4)
element = find_element(:xpath, '//*[@id="img1"]')
element.click
sleep(4)

driver_quit
puts 'Tests Succeeded!'