require 'rubygems'
require 'appium_lib'

caps = {}
caps["platformName"] = "iOS"
caps["platformVersion"] = "12.1"
caps["deviceName"] = "iPad Pro (10.5-inch)"
caps["app"] = "/Users/saimzahid/Library/Developer/Xcode/DerivedData/AuditsPackage-cgszchtbotitxjgaqsuubawumsfu/Build/Products/Debug-iphonesimulator/AuditsPackage.app"
caps["noReset"] = true
caps["automationName"] = "XCUITest"
opts = {
    sauce_username: nil,
    server_url: "http://localhost:4723/wd/hub"
}
driver = Appium::Driver.new({caps: caps, appium_lib: opts}).start_driver

el1 = driver.find_element(:accessibility_id, "Launch App")
el1.click

el2 = driver.find_element(:accessibility_id, "Updated Multiselect")
el2.click

el3 = driver.find_element(:accessibility_id, "startAudit")
el3.click

el1 = driver.find_element(:accessibility_id, "View criteria button on row 0")
el1.click

wait = Selenium::WebDriver::Wait.new(:timeout => 60)

el1 = driver.find_element(:xpath, "//XCUIElementTypeNavigationBar[@name=\"AuditsPackage.CriteriaView\"]/XCUIElementTypeButton")
el1.click

el4 = driver.find_element(:accessibility_id, "Option on row 0")
el4.click

el5 = driver.find_element(:accessibility_id, "Option on row 1")
el5.click

el6 = driver.find_element(:accessibility_id, "saveAnswer")
el6.click

el7 = driver.find_element(:accessibility_id, "Option on row 0")
el7.click

el8 = driver.find_element(:accessibility_id, "saveAnswer")
el8.click

driver.quit