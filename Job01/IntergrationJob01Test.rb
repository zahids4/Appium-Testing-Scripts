require 'rubygems'
require 'appium_lib'
require './SyncJob.rb'
require './SignInToJob.rb'
require './NavigateToWorkItemScreen.rb'
require './CreateBin.rb'
require './CreateSuspect.rb'

caps = {}
caps["platformName"] = "iOS"
caps["platformVersion"] = "11.4"
caps["deviceName"] = "iPad Pro (10.5-inch)"
caps["app"] = "/Users/saimzahid/Library/Developer/Xcode/DerivedData/edn_ios_client-awtvpsngjnhcsrfadkxxowclwymw/Build/Products/Debug-iphonesimulator/edn_ios_client.app"
caps["noReset"] = true
opts = {
    sauce_username: nil,
    server_url: "http://localhost:4723/wd/hub"
}
driver = Appium::Driver.new({caps: caps, appium_lib: opts}).start_driver

sync_job(driver)
sign_in_to_job(driver)
navigate_to_work_items_screen(driver)
create_bin(driver)
create_suspect(driver)

puts "Passed!"

# driver.quit