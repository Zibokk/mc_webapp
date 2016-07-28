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

# @driver = @appium_driver.start_driver


# Now promote appium methods to class instance methods.  More information at http://www.rubydoc.info/github/appium/ruby_lib/Appium.promote_appium_methods
# Without promoting we would need to make all calls with the @appium_driver, example:
#     @appium_driver.find_element(:id, 'lst-ib')
# After promoting to a class instance method we can the method directly, example:
#     find_element(:id, 'lst-ib')
Appium.promote_appium_methods Object

@selenium_driver.get("http://www.google.com/")



# @BeforeClass()
# public void init() throws MalformedURLException {
#   capabilities.setCapability("platformName", "iOS");
#   capabilities.setCapability("deviceName", "iPhone 5s");
#   capabilities.setCapability("browser", "safari");
#   driver = new IOSDriver(new URL("http://127.0.0.1:4723/wd/hub"),
#                              capabilities);
#   driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
# }
#
# @Test
# public void googleTest() {
#   driver.get("http://www.google.com");
# }