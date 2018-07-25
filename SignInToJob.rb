def sign_in_to_job(driver)
    el1 = driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"E-Data Now\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]")
    el1.click

    el1 = driver.find_element(:accessibility_id, "Sign In User...")
    el1.click

    el2 = driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"E-Data Now\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]")
    el2.click

    el3 = driver.find_element(:accessibility_id, "Next")
    el3.click

    el4 = driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"E-Data Now\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage/XCUIElementTypeImage[2]")
    el4.click

    el5 = driver.find_element(:accessibility_id, "Sign In")
    el5.click
end
