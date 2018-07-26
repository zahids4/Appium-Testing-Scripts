def create_bin(driver)
  el1 = driver.find_elements(:accessibility_id, "Add Work Item")
  el1.click
end