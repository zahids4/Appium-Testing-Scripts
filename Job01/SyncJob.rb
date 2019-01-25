def sync_job(driver)
    wait = Selenium::WebDriver::Wait.new(:timeout => 60)
    el1 = driver.find_element(:xpath, "(//XCUIElementTypeImage[@name=\"Inactive Job Select Box\"])[1]")
    el1.click

  el2 = driver.find_element(:accessibility_id, "Sync")
  el2.click

  wait = Selenium::WebDriver::Wait.new(:timeout => 60)
  wait.until { driver.find_element(:accessibility_id, 'Start Shift').enabled? }

  el3 = driver.find_element(:accessibility_id, "Start Shift")
  el3.click

  ::Appium::TouchAction.new.press(x: 555, y: 190).release.perform
end
