def create_suspect(driver)
  el1 = driver.find_element(:accessibility_id, "Suspected")
  el1.click
end