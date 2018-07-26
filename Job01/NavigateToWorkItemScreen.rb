def navigate_to_work_items_screen(driver)
  el1 = driver.find_element(:accessibility_id, "REFERENCE")
  el1.click
  el2 = driver.find_element(:accessibility_id, "WORK ITEMS")
  el2.click
end