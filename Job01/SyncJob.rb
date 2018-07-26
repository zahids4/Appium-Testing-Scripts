def sync_job(driver)
  el1 = driver.find_element(:xpath, "(//XCUIElementTypeImage[@name=\"checkmark_default\"])[1]")
  el1.click

  el2 = driver.find_element(:accessibility_id, "Sync")
  el2.click

  wait = Selenium::WebDriver::Wait.new(:timeout => 60)
  wait.until { driver.find_element(:accessibility_id, 'Start Shift').enabled? }

  el3 = driver.find_element(:accessibility_id, "Start Shift")
  el3.click

  el4 = driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"E-Data Now\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]")
  el4.click
end