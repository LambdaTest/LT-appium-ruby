require 'rubygems'
require 'appium_lib'

        username= ENV["LT_USERNAME"] || "LT_Username" #Enter your username here
        accessToken= ENV["LT_ACCESS_KEY"] || "LT_AccessKey" #Enter your Access Key here
 
        caps = {     
            "LT:Options" => {      
                "deviceName" => "iPhone 13 Pro",  
                "platformName" => "iOS",
                "platformVersion" => "15",
                "isRealMobile" => true,
                "app" => "YOUR_APP_URL",
                "w3c" => true,
        } }

        appium_driver = Appium::Driver.new({
            'caps' => caps,
            'appium_lib' => {
                :server_url => "https://#{username}:#{accessToken}@beta-hub.lambdatest.com/wd/hub"
            }}, true)
 
            driver = appium_driver.start_driver

            wait = Selenium::WebDriver::Wait.new(:timeout => 30)

            el1 = driver.find_element(:id, "color")
            el1.click
            el2 = driver.find_element(:id, "geoLocation")
            el2.click
            sleep(5)
            driver.back
            el3 = driver.find_element(:id, "Text")
            el3.click
            el4 = driver.find_element(:id, "notification")
            el4.click
            el5 = driver.find_element(:id, "Toast")
            el5.click
            el6 = driver.find_element(:id, "speedTest")
            el6.click
            sleep(10)
            driver.back
            puts "Found results - Test Passed"

            
            driver.quit
