def create_bin(driver)
  el1 = driver.find_element(:accessibility_id, "Add Work Item")
  el1.click
  el2 = driver.find_element(:xpath, "//XCUIElementTypeCell[@name=\"partNumberField\"]/XCUIElementTypeTextField")
  el2.click
  el2.send_keys "12345"
  el3 = driver.find_element(:xpath, "//XCUIElementTypeCell[@name=\"serialNumberField\"]/XCUIElementTypeTextField")
  el3.send_keys "SZ9876"
  el4 = driver.find_element(:xpath, "//XCUIElementTypeCell[@name=\"lotNumberField\"]/XCUIElementTypeTextField")
  el4.send_keys "19/05/12"
  el5 = driver.find_element(:accessibility_id, "saveUpdateButton")
  el5.click
end